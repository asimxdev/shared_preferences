// import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedprefManager {
  final String intKey = 'intValue';
  final String doubleKey = 'doubleValue';
  final String boolKey = 'boolValue';
  final String stringKey = 'stringValue';
  final String listKey = 'stringListKey';

  Future<void> setIntValue(intData) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.setInt(intKey, intData);
  }

  Future<void> setDoubleValue(doubleData) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.setDouble(doubleKey, doubleData);
  }

  Future<void> setStringValue(stringData) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.setString(stringKey, stringData);
  }

  Future<void> setBoolValue(boolData) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.setBool(boolKey, boolData);
  }

  Future<void> setListValue(listData) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.setStringList(listKey, listData);
  }

  Future<int> getIntValue() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getInt(intKey) ?? 0;
  }

  Future<double> getDoubleValue() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getDouble(doubleKey) ?? 0.0;
  }

  Future<String> getStringValue() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString(stringKey) ?? '';
  }

  Future<bool> getBoolValue() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getBool(boolKey) ?? true;
  }

  Future<List> getListValue() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getStringList(listKey) ?? [];
  }
}
