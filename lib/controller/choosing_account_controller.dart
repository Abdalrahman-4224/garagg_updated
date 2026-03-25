import 'package:get/get.dart';

enum AccountType { owner, driver, none }

class ChooseAccountController extends GetxController {
  var selectedAccountType = AccountType.none.obs;

  void setSelectedAccountType(AccountType? type) {
    selectedAccountType.value = type!;
  }
}
