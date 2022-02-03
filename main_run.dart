import 'dart:io';

import 'package:meal_app/assignment6/person_detail/person_detail.dart';

void main() {
  List<PersonDetail> personDetailList = [];
  getMenu(personDetailList);
}

void getMenu(List<PersonDetail> personDetailList) {
  String exit = "";
  while (exit != "exit") {
    print("Enter 1 to add Contact "
        "\n Enter 2 to Update Contact"
        "\nEnter 3 to List All Contacts"
        "\nEnter 4 to Delete a contact"
        "\nEnter 5 to SHOW LIST Detail"
        "\nfor exit please press 1"
        "\nPlease enter your choice"
        "\n");
    var _choseValue = stdin.readLineSync()!;
    switch (_choseValue) {
      case "1":
        {
          addPersonDetail(personDetailList);
          break;
        }
      case "2":
        {
        updatePersonDetail(personDetailList);
          break;
        }
      case "3":
        {
          addListAll(personDetailList);
          break;
        }
      case "4":
        {
          deteleCOntact(personDetailList);
          break;
        }

      case "5":
        {
          for(var person in personDetailList)
            {
              person.getPrintAllDetail();
            }
          break;
        }
      case "exit":
        {
          exit = "exit";
          break;
        }
    }
  }
}

void deteleCOntact(List<PersonDetail> personDetailList) {
    print("enter Name for delete Contact");
    var name = stdin.readLineSync()!;
    personDetailList.removeWhere((element) => element.name==name);
}

void addListAll(List<PersonDetail> personDetailList) {
  var out="0";
  while(out!="1") {
    addPersonDetail(personDetailList);
    print("Do you want add more enter 0 or 1 for done");
    out=stdin.readLineSync()!;

  }
}


void updatePersonDetail(List<PersonDetail> personDetailList) {
  print("Enter Person name you update");
  var name = stdin.readLineSync()!;
  var person =
  personDetailList.where((element) => element.name == name);
  if (person.isNotEmpty) {
    print("which detail want you update");
    var selectDetail = stdin.readLineSync()!;
    switch (selectDetail) {
      case "1":
        {
          print("Please Enter Update Name");
          var name = stdin.readLineSync()!;
          person.first.name = name;
          break;
        }
      case "2":
        {
          print("Please Enter Update Contact");
          var contact = stdin.readLineSync()!;
          person.first.contactNo = contact;
          break;
        }
      case "3":
        {
          print("Please Enter Update email (Optional) ");
          var email = stdin.readLineSync()!;
          person.first.email = email;
          break;
        }
      case "4":
        {
          print("Please Enter Update Date of Birth (Optional)");
          var dob = stdin.readLineSync()!;
          person.first.dob = dob;
          break;
        }
    }
  } else {
    print("no User Found Please Add new User Then Update Contact\n \n");
  }

}

void addPersonDetail(List<PersonDetail> personDetailList) {
  print("enter your name");
  var name = stdin.readLineSync()!;
  print("enter your Contact");
  var contact = stdin.readLineSync()!;
  var email;
  var dob;
  print(
      "email optional if you want to give information type Y for Yes or N for No");
  var emailOptional = stdin.readLineSync()!;
  if (emailOptional == "y" || emailOptional == "y") {
    print("enter your Email");
    email = stdin.readLineSync()!;
    print(email);
  }
  if (emailOptional == "N" || emailOptional == "n") {
    email = "-";
    print(email);
  }
  print(
      "Date Of Birth optional if you want to give information type Y for Yes or N for No");
  var dobOptional = stdin.readLineSync()!;
  if (dobOptional == "y" || dobOptional == "y") {
    print("enter your DATE OF BIRTH");
    dob = stdin.readLineSync()!;
    print(email);
  }
  if (dobOptional == "N" || dobOptional == "n") {
    dob = "-";
    print(dob);
  }
  personDetailList.add(PersonDetail(name, contact,
      user_email: email ?? "-", user_dob: dob ?? "-"));
  print(personDetailList[0].email);
}
