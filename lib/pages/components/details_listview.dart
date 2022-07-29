import 'package:flutter/material.dart';

import '../../models/company_details.dart';

class DetailsListview extends StatelessWidget {
  const DetailsListview({
    Key? key,
    required this.companyDetails,
  }) : super(key: key);

  final CompanyDetails companyDetails;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: companyDetails.response!.data!.symbols!.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemBuilder: ((context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            width: 300,
            // color: Colors.black12,
            child: Row(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          "${companyDetails.response!.data!.symbols![index].baseSym}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "${companyDetails.response!.data!.symbols![index].companyName}",
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          "${companyDetails.response!.data!.symbols![index].ltp}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "${companyDetails.response!.data!.symbols![index].chper}",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
