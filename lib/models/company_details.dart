// class CompanyDetails {
//   final String companyName;
//   final String companySymbol;
//   final String stockValue;
//   final String valueRiseOrFall;

// CompanyDetails({
//   required this.companyName,
//   required this.companySymbol,
//   required this.stockValue,
//   required this.valueRiseOrFall,
// });

// factory CompanyDetails.fromJson(Map<String, dynamic> json){
//   return CompanyDetails(
//     companyName: json['response']['data']['symbols']['companyName'],
//     companySymbol: json['response']['data']['symbols']['dispSym'],
//      stockValue: json['response']['data']['symbols']['ltp'],
//       valueRiseOrFall: json['response']['data']['symbols']['chper'],
//       );
// }


// }

class CompanyDetails {
  Response? response;

  CompanyDetails({this.response});

  CompanyDetails.fromJson(Map<String, dynamic> json) {
    response = json['response'] != null
        ?  Response.fromJson(json['response'])
        : null;
  }
}

class Response {
  String? appID;
  Data? data;
  String? infoID;
  String? msgID;
  String? serverTime;
  String? svcGroup;
  String? svcName;

  Response(
      {this.appID,
      this.data,
      this.infoID,
      this.msgID,
      this.serverTime,
      this.svcGroup,
      this.svcName});

  Response.fromJson(Map<String, dynamic> json) {
    appID = json['appID'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    infoID = json['infoID'];
    msgID = json['msgID'];
    serverTime = json['serverTime'];
    svcGroup = json['svcGroup'];
    svcName = json['svcName'];
  }
}


class Data {
  int? currCount;
  List<Symbols>? symbols;

  Data({this.currCount, this.symbols});

  Data.fromJson(Map<String, dynamic> json) {
    currCount = json['currCount'];
    if (json['symbols'] != null) {
      symbols = <Symbols>[];
      json['symbols'].forEach((v) {
        symbols!.add( Symbols.fromJson(v));
      });
    }
  }
}

class Symbols {
  String? ltp;
  String? ch;
  String? chper;
  String? baseSym;
  String? companyName;
  String? dispSym;
  String? excToken;
  String? haircut;
  String? isin;
  String? mCap;
  String? sector;
  Sym? sym;
  bool? ttEligibility;

  Symbols(
      {this.ltp,
      this.ch,
      this.chper,
      this.baseSym,
      this.companyName,
      this.dispSym,
      this.excToken,
      this.haircut,
      this.isin,
      this.mCap,
      this.sector,
      this.sym,
      this.ttEligibility});

  Symbols.fromJson(Map<String, dynamic> json) {
    ltp = json['ltp'];
    ch = json['ch'];
    chper = json['chper'];
    baseSym = json['baseSym'];
    companyName = json['companyName'];
    dispSym = json['dispSym'];
    excToken = json['excToken'];
    haircut = json['haircut'];
    isin = json['isin'];
    mCap = json['mCap'];
    sector = json['sector'];
    sym = json['sym'] != null ? Sym.fromJson(json['sym']) : null;
    ttEligibility = json['tt_eligibility'];
  }

  
}

class Sym {
  String? asset;
  String? exc;
  String? expiry;
  String? id;
  String? instrument;
  String? lotSize;
  String? multiplier;
  String? optionType;
  String? streamSym;
  String? strike;
  String? tickSize;

  Sym(
      {this.asset,
      this.exc,
      this.expiry,
      this.id,
      this.instrument,
      this.lotSize,
      this.multiplier,
      this.optionType,
      this.streamSym,
      this.strike,
      this.tickSize});

  factory Sym.fromJson(Map<String, dynamic> json) {
    return Sym(
    asset: json['asset'],
    exc: json['exc'],
    expiry: json['expiry'],
    id: json['id'],
    instrument: json['instrument'],
    lotSize: json['lotSize'],
    multiplier: json['multiplier'],
    optionType: json['optionType'],
    streamSym: json['streamSym'],
    strike: json['strike'],
    tickSize: json['tickSize'],);
  }

  
}