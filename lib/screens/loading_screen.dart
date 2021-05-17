import 'package:flutter/material.dart';
import 'package:weather_app/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/services/weather.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

WeatherModel weatherModel = WeatherModel();
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await weatherModel.getLocationWeather();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return LocationScreen(
          locationWeather: weatherData,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}

//get data from api
// void getApiData() async {

//   http.Response response = await http.get(
//     Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey'),
//   );
//   print(response.statusCode);
//   if (response.statusCode == 200) {
//     String data = response.body;
//     print(response.body);
//     var decodedData = jsonDecode(data);
//     double temperature = decodedData['main']['temp'];
//     int condition = decodedData['weather'][0]['id'];
//     String cityName = decodedData['name'];
//     print(temperature);
//     print(condition);
//     print(cityName);
//   } else {
//     print(response.statusCode);
//   }
// }
