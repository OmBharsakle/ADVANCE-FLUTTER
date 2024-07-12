import 'package:flutter/material.dart';

import '../modelClass/modelClass.dart';


class QuotesProvider extends ChangeNotifier

{
  List quotesAddingList=[];
  void addUserList(QuotesModal quotesModal)
  {
    quotesAddingList.insert(0, {'quote':quotesModal.quote,'author':quotesModal.author});
    notifyListeners();
  }
  void quotesAddingJsonFile(List jsonList)
  {
    quotesAddingList.addAll(jsonList);
    notifyListeners();
  }
  void provideRemove(int index)
  {
    quotesAddingList.removeAt(index);
    notifyListeners();
  }
}