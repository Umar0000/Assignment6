import 'dart:math';
import 'dart:io';

class PersonDetail
{
  String _name="";
  String _contactNo="";
  String _email="-";
  String _dob="-";

  String get name => _name;

  PersonDetail(String user_name,String contact_No,{String user_email="-",user_dob="-"})
  {
    _name= user_name ;
    _contactNo= contact_No;
    _email=user_email;
    _dob=user_dob;
  }



  void getPrintAllDetail()
  {
    print(" name :  $_name\n contactNo : $_contactNo\n email : $_email\n dob : $_dob \n \n");
  }

  String get contactNo => _contactNo;

  String get email => _email;

  String get dob => _dob;

  set dob(String value) {
    _dob = value;
  }

  set email(String value) {
    _email = value;
  }

  set contactNo(String value) {
    _contactNo = value;
  }

  set name(String value) {
    _name = value;
  }
}



