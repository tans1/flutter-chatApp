// import 'package:e_learning/common/values/constants.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class StorageService {
//   late final SharedPreferences _prefs;

//   Future<StorageService> init() async {
//     _prefs = await SharedPreferences.getInstance();
//     return this;
//   }

//   Future<bool> setBool(String key, bool value) async {
//     return await _prefs.setBool(key, value); // save to the local storage
//   }

//   bool getDeviceFirstOpen() {
//     return _prefs.getBool(AppConstants.DEVICE_FIRST_TIME) ??
//         true; // get from the local storage
//   }

//   Future<bool> setString(String key, String value) async {
//     return await _prefs.setString(key, value); // save to the local storage
//   }

//   bool getIsLoggedIn() {
//     return _prefs.getString(AppConstants.USER_TOKEN_KEY) == null
//         ? false
//         : true; // get from the local storage
//   }

//   Future<bool> remove(String key) {
//     return _prefs.remove(key);
//   }
// }
