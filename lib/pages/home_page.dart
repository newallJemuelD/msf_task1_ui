import 'dart:convert';
import 'package:flutter/material.dart';

import '../models/company_details.dart';
import 'components/bottom_nav_bar.dart';
import 'components/details_listview.dart';
import 'components/topbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String rawJson =
        "{\"response\":{\"appID\":\"f13e3a6388be08b8d58f2d8741e9fab5\",\"data\":{\"currCount\":5,\"symbols\":[{\"ltp\":\"3900\",\"ch\":\"120.00\",\"chper\":\"4\",\"baseSym\":\"TCS\",\"companyName\":\"TATACONSULTANCYSERVLT\",\"dispSym\":\"TCS\",\"excToken\":\"532540\",\"haircut\":\"80\",\"isin\":\"INE467B01029\",\"mCap\":\"1328217.35\",\"sector\":\"EQ\",\"sym\":{\"asset\":\"Equity\",\"exc\":\"BSE\",\"expiry\":\"\",\"id\":\"STK_TCS_A_BSE\",\"instrument\":\"STK\",\"lotSize\":\"0\",\"multiplier\":\"1\",\"optionType\":\"\",\"streamSym\":\"532540_BSE\",\"strike\":\"0.00\",\"tickSize\":\"0.05\"},\"tt_eligibility\":false},{\"ltp\":\"444\",\"ch\":\"20.00\",\"chper\":\"2\",\"baseSym\":\"SUNPHARMA\",\"companyName\":\"SUNPHARMACEUTICALINDL\",\"dispSym\":\"SUNPHARMA\",\"excToken\":\"3351\",\"haircut\":\"80\",\"isin\":\"INE044A01036\",\"mCap\":\"225861.40\",\"sector\":\"EQ\",\"sym\":{\"asset\":\"Equity\",\"exc\":\"NSE\",\"expiry\":\"\",\"id\":\"STK_SUNPHARMA_EQ_NSE\",\"instrument\":\"STK\",\"lotSize\":\"1\",\"multiplier\":\"1\",\"optionType\":\"\",\"streamSym\":\"3351_NSE\",\"strike\":\"0.00\",\"tickSize\":\"0.05\"},\"tt_eligibility\":false},{\"ltp\":\"566\",\"ch\":\"35.00\",\"chper\":\"-6.3\",\"baseSym\":\"SBICARD\",\"companyName\":\"SBICARDS&PAYSERLTD\",\"dispSym\":\"SBICARD\",\"excToken\":\"17971\",\"haircut\":\"80\",\"isin\":\"INE018E01016\",\"mCap\":\"75090.68\",\"sector\":\"EQ\",\"sym\":{\"asset\":\"Equity\",\"exc\":\"NSE\",\"expiry\":\"\",\"id\":\"STK_SBICARD_EQ_NSE\",\"instrument\":\"STK\",\"lotSize\":\"1\",\"multiplier\":\"1\",\"optionType\":\"\",\"streamSym\":\"17971_NSE\",\"strike\":\"0.00\",\"tickSize\":\"0.05\"},\"tt_eligibility\":false},{\"ltp\":\"987\",\"ch\":\"45.00\",\"chper\":\"42.3\",\"baseSym\":\"INFY\",\"companyName\":\"INFOSYSLIMITED\",\"dispSym\":\"INFY\",\"excToken\":\"1594\",\"haircut\":\"80\",\"isin\":\"INE009A01021\",\"mCap\":\"680860.65\",\"sector\":\"EQ\",\"sym\":{\"asset\":\"Equity\",\"exc\":\"NSE\",\"expiry\":\"\",\"id\":\"STK_INFY_EQ_NSE\",\"instrument\":\"STK\",\"lotSize\":\"1\",\"multiplier\":\"1\",\"optionType\":\"\",\"streamSym\":\"1594_NSE\",\"strike\":\"0.00\",\"tickSize\":\"0.05\"},\"tt_eligibility\":false}]},\"infoID\":\"0\",\"msgID\":\"74983b16d40b1a083e35c7679148c53e\",\"serverTime\":\"1650613750000\",\"svcGroup\":\"svcGroup\",\"svcName\":\"svcName\"}}";
    Map<String, dynamic> map = jsonDecode(rawJson);
    CompanyDetails companyDetails = CompanyDetails.fromJson(map);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const TopBarWidget(), //Top bar widget with the categories
            DetailsListview(
                companyDetails:
                    companyDetails), //main listview builder of details
          ],
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
