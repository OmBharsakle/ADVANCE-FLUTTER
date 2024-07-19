import 'package:advance_flutter/Screens/1.5/modelClass/modelClass.dart';
import 'package:flutter/cupertino.dart';

class Quotesprovider extends ChangeNotifier
{
   List<QuotesModal> newQuotesList = [];

  Quotesprovider()
  {
    QuotesModal.newQuotesList = quotes.map((e)=> QuotesModal.fromJson(e)).toList();
  }


}