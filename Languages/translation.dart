import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:get/get.dart';
import 'arabic.dart';
import 'english.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'Arabic': arabic,
        'English': english,
      };
}
