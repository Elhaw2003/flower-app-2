import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/featuer/search_category/data/model/item_category_model.dart';
import 'package:flutter/cupertino.dart';

class ItemSearchProvider extends ChangeNotifier{

  List <ItemCategoryModel> catigories = [
    ItemCategoryModel(
        image: AppImages.oreoMilkshake,
        title: AppTexts.oreoMilkshake,
        smallDesc: AppTexts.smallDescSearchCategory,
        bigDesc: AppTexts.bigDescSearchCategory,
        price: 45),
    ItemCategoryModel(
        image: AppImages.vanillaMilkshake,
        title: AppTexts.vanillaMilkshake,
        smallDesc: AppTexts.smallDescSearchCategory,
        bigDesc: AppTexts.bigDescSearchCategory,
        price: 45),
    ItemCategoryModel(
        image: AppImages.chocolateMilkshake,
        title: AppTexts.chocolateMilkshake,
        smallDesc: AppTexts.smallDescSearchCategory,
        bigDesc: AppTexts.bigDescSearchCategory,
        price: 45),
    ItemCategoryModel(
        image: AppImages.mangoMilkshake,
        title: AppTexts.mangoMilkshake,
        smallDesc: AppTexts.smallDescSearchCategory,
        bigDesc: AppTexts.bigDescSearchCategory,
        price: 45),
  ];

  List <ItemCategoryModel> searchItemList = [];//catch items in form field
  
  searchItemInFormField(value){
    searchItemList=catigories.where((element) => element.title.toLowerCase().contains(value.toLowerCase())).toList();
    notifyListeners();
  }// catch items when search in form field




plusCountItem(int index){

    catigories[index].count+=1;
    notifyListeners();
}

  minusCountItem(int index){

    if(catigories[index].count > 0 ){
      catigories[index].count-=1;
    }
    notifyListeners();
  }

}