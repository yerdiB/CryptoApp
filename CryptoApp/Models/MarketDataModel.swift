//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Yerdaulet Ismanaliyev on 30.01.2023.
//
/*
 url:https://api.coingecko.com/api/v3/global
 
 jsonResponse:
 {
 "data": {
   "active_cryptocurrencies": 12357,
   "upcoming_icos": 0,
   "ongoing_icos": 49,
   "ended_icos": 3376,
   "markets": 647,
   "total_market_cap": {
     "btc": 46946162.82095682,
     "eth": 686053765.5992044,
     "ltc": 11649786567.547937,
     "bch": 8230225841.0310135,
     "bnb": 3534880060.5909386,
     "eos": 1016088135865.1107,
     "xrp": 2704709503381.98,
     "xlm": 11877564609191.262,
     "link": 154892395815.60815,
     "dot": 173107221080.29736,
     "yfi": 146727431.2211735,
     "usd": 1081593613745.7427,
     "aed": 3972736607032.66,
     "ars": 200684584500697.34,
     "aud": 1528108986902.0078,
     "bdt": 114728613792916,
     "bhd": 407765118756.5997,
     "bmd": 1081593613745.7427,
     "brl": 5532026856225.367,
     "cad": 1441715615410.455,
     "chf": 995436029661.9814,
     "clp": 874306197671371.4,
     "cny": 7302054805120.264,
     "czk": 23681438093282.31,
     "dkk": 7381908861623.088,
     "eur": 992447586507.2039,
     "gbp": 872954205654.1882,
     "hkd": 8474350859314.6875,
     "huf": 388325632410372.9,
     "idr": 16206858008537552,
     "ils": 3753499744713.6226,
     "inr": 88187569812936.34,
     "jpy": 140688830104784.02,
     "krw": 1328543584637918.2,
     "kwd": 330231080555.23596,
     "lkr": 395765470344354.7,
     "mmk": 2270789984568519,
     "mxn": 20318957153403.676,
     "myr": 4592446483964.416,
     "ngn": 498217165957362.2,
     "nok": 10711848976038.584,
     "nzd": 1666373424921.582,
     "php": 59050684936062.445,
     "pkr": 281414954638963.94,
     "pln": 4674302570246.308,
     "rub": 75619606689097.53,
     "sar": 4060256999069.7373,
     "sek": 11178978441879.232,
     "sgd": 1419710593338.7969,
     "thb": 35398583987959.445,
     "try": 20343100486049.723,
     "twd": 32525144518942.273,
     "uah": 39724246754344.555,
     "vef": 108299968544.36124,
     "vnd": 25362732971706804,
     "zar": 18740675201947.223,
     "xdr": 800353315925.118,
     "xag": 45686016711.5578,
     "xau": 561617483.9374747,
     "bits": 46946162820956.82,
     "sats": 4694616282095682
   },
   "total_volume": {
     "btc": 3424967.4055359624,
     "eth": 50051200.02211492,
     "ltc": 849912684.6101018,
     "bch": 600437896.345977,
     "bnb": 257887935.08376878,
     "eos": 74128928486.91553,
     "xrp": 197322663533.88495,
     "xlm": 866530280627.4904,
     "link": 11300208050.167124,
     "dot": 12629074544.901062,
     "yfi": 10704531.302102631,
     "usd": 78907894714.26968,
     "aed": 289831853601.3009,
     "ars": 14640987024430.193,
     "aud": 111483519797.05608,
     "bdt": 8370050694487.246,
     "bhd": 29748591938.858505,
     "bmd": 78907894714.26968,
     "brl": 403590209095.0764,
     "cad": 105180672798.85924,
     "chf": 72622249637.12018,
     "clp": 63785196692279.91,
     "cny": 532722978794.97784,
     "czk": 1727684409374.1958,
     "dkk": 538548748661.7306,
     "eur": 72404227124.02478,
     "gbp": 63686561823.887,
     "hkd": 618248089559.9835,
     "huf": 28330380031527.348,
     "idr": 1182374811698386,
     "ils": 273837381158.50766,
     "inr": 6433743122620.095,
     "jpy": 10263983858905.96,
     "krw": 96924182953405.42,
     "kwd": 24092079506.26607,
     "lkr": 28873155008122.09,
     "mmk": 165665971713727.72,
     "mxn": 1482373889220.6868,
     "myr": 335042920956.7885,
     "ngn": 36347540496339.305,
     "nok": 781485245894.8674,
     "nzd": 121570631609.9601,
     "php": 4308055419820.2583,
     "pkr": 20530688540929.59,
     "pln": 341014749336.6591,
     "rub": 5516844669869.223,
     "sar": 296216922625.7901,
     "sek": 815564776543.0134,
     "sgd": 103575291680.89735,
     "thb": 2582511308182.2974,
     "try": 1484135271246.4998,
     "twd": 2372878913715.946,
     "uah": 2898090965644.653,
     "vef": 7901047497.739824,
     "vnd": 1850343638833688.5,
     "zar": 1367229990003.6245,
     "xdr": 58389948299.0863,
     "xag": 3333033175.099179,
     "xau": 40972924.33038437,
     "bits": 3424967405535.9624,
     "sats": 342496740553596.25
   },
   "market_cap_percentage": {
     "btc": 41.06203540749171,
     "eth": 17.566452216646063,
     "usdt": 6.249790194483032,
     "usdc": 3.965876682819194,
     "bnb": 3.814130138767747,
     "xrp": 1.8756814236511032,
     "busd": 1.447161530977205,
     "ada": 1.228188678108005,
     "doge": 1.092679149510934,
     "matic": 0.9234934488819111
   },
   "market_cap_change_percentage_24h_usd": -2.038021544755849,
   "updated_at": 1675082921
 }
}
 
 
 
 */


import Foundation


// MARK: - GlobalData
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - MarketDataModel
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        
        if let item = totalMarketCap.first(where: {$0.key == "usd"}){
            return "$\(item.value.formattedWithAbbreviations())"
        }
        
        return ""
    }
    
    var volume: String {
        
        if let item = totalVolume.first(where: {$0.key == "usd"}){
            return "$\(item.value.formattedWithAbbreviations())"
        }
        
        return ""
    }
    
    var btcDominance: String{
        
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}){
            return "\(item.value.asPercentString())"
        }
        
        return ""
        
    }
}
