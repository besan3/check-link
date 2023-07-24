import 'dart:async';
import 'dart:convert';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:whatsapp/core/app_configs.dart';
import 'package:http/http.dart' as http;
import 'package:whatsapp/core/network_info.dart';
import 'package:whatsapp/core/validations.dart';
import 'package:whatsapp/featuers/home/pages/check_result_screen.dart';

class AppController extends GetxController{
  bool isLoading=false;
  final TextEditingController linkController = TextEditingController();
  var formKey=GlobalKey<FormState>();
  NetworkInfo networkInfo =
  NetworkInfoImp(connectionChecker: InternetConnectionChecker());
  @override
  void dispose() {
    super.dispose();
    linkController.dispose();

  }
  void startLoading() {
    isLoading = true;
    update();
  }

  void stopLoading() {
    isLoading = false;
    update();
  }
   submitUrlForScan( String url) async {


    const apiUrl = "https://developers.checkphish.ai/api/neo/scan";
    startLoading();
    if (await networkInfo.isConnected) {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "apiKey": 'zfakd703yfhzdnvr32fptuhlxdn8jvhc3u61bljkaz6i2vlcylprdhhllxzy38nu',
          "urlInfo": {"url": url},
        }),
      );

      print(response.statusCode);

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        String jobID = jsonData['jobID'];
        print(response.body);
        if(jsonData['jobID']!='none'){
          getApiResults(jobID, true);
        }else{
          stopLoading();
          AppValidations.showSnake(json.decode(response.body)['errorMessage']);
        }

        return json.decode(response.body);
      } else {
        stopLoading();
        AppValidations.showSnake(json.decode(response.body)['errorMessage']);
        throw Exception("API Error: ${response.statusCode}");
      }
    } else {
    stopLoading();
    AppValidations.showSnake('Check your Internet connection');
    }
  }





  Future<Map<String, dynamic>?> getApiResults(String jobID, bool insights) async {
    const apiUrl = "https://developers.checkphish.ai/api/neo/scan/status";

    while (true) {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "apiKey": 'zfakd703yfhzdnvr32fptuhlxdn8jvhc3u61bljkaz6i2vlcylprdhhllxzy38nu',
          "jobID": jobID,
          "insights": insights,
        }),
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        String status = data["status"];

          if (status == 'DONE') {
          stopLoading();
            Get.to(() => CheckResultScreen(result: json.decode(response.body)));
          print(response.body);
          return json.decode(response.body);
        } else {
          // Wait for 30 seconds before checking the status again
          await Future.delayed(const Duration(seconds: 30));
        }
        }

    }
  }



}