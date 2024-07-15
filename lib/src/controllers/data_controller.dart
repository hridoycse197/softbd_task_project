import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task_project/src/base/base.dart';
import 'package:softbd_task_project/src/models/data_model.dart';
import 'package:softbd_task_project/src/repositories/data_repository.dart';

import '../helpers/dialog_helper.dart';

class DataController extends GetxController {
  final isLoading = RxBool(false);
  final paragraph = RxString('');
  final allData = RxList<DataModel>([]);
  final paragraphTextEditingController =
      Rx<TextEditingController>(TextEditingController());
  final paragraphDetails = RxString('');
  final paragraphDetailsTextEditingController =
      Rx<TextEditingController>(TextEditingController());

  @override
  void onReady() {
    super.onReady();
    fetchData();
  }

  Future<void> saveData() async {
    final value = DataModel(
      name: Base.dataC.paragraph.value,
      category: Base.settingsC.selectedParagraphCategory.value,
      date: (Base.settingsC.addNewPageselectedDateselectedDateInDateFomat.value
                  .millisecondsSinceEpoch ~/
              1000)
          .toString(),
      location: Base.settingsC.selectedPlace.toString(),
    );
    value.id = allData.length;
    allData.add(value);
    await Base.isarService.putAll<DataModel>(allData);
    Base.dataC.paragraph('');
    Base.dataC.paragraphTextEditingController.value.clear();
    Base.dataC.paragraphDetails('');
    Base.dataC.paragraphDetailsTextEditingController.value.clear();
    Base.settingsC.selectedParagraphCategory('');
    Base.settingsC.selectedPlace('');
    Base.settingsC
        .addNewPageselectedDateselectedDateInDateFomat(DateTime.now());
    Base.settingsC.addNewPageselectedDate('');
    await DialogHelper.addSuccessDialog();
  }

  Future<void> fetchData() async {
    isLoading(true);

    try {
      final localDataList = await Base.isarService.getAll<DataModel>();

      if (localDataList.isEmpty) {
        final response = await DataRepository().fetchData();

        List<dynamic> x = response.data['data'];

        List<DataModel> dataList =
            x.map((json) => DataModel.fromJson(json)).toList();
        for (var data in dataList) {
          data.id = dataList.indexOf(data); // Set your custom property here
        }
        allData.addAll(dataList);
        await Base.isarService.putAll<DataModel>(dataList);
      } else {
        allData.addAll(localDataList);
      }
    } catch (e) {
      rethrow;
    } finally {
      isLoading(false);
    }
  }
}
