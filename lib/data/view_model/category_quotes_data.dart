import 'package:flutter/material.dart';

import '../model/quotesModel.dart';

class QuotesModelData with ChangeNotifier {
  List<QuotesModel> _quotesModelList = [/*QuotesModel(quote: "",author: "",tags: "",popularity: 0.0,category: '')*/];

  List<QuotesModel> get quotesModelList => _quotesModelList;

  void addQuotesModelList(List<QuotesModel> quotesModelList){
    _quotesModelList = quotesModelList;
    notifyListeners();
    print('provider quotesModelList $quotesModelList');
  }

}