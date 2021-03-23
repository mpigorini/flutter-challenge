import 'package:json_annotation/json_annotation.dart';

part 'MarketData.g.dart';


@JsonSerializable()
class MarketData {
  MarketData(
    this.currentPrice,
    this.roi,
    this.ath,
    this.athChangePercentage,
    this.athDate,
    this.atl,
    this.atlChangePercentage,
    this.atlDate,
    this.marketCap,
    this.marketCapRank,
    this.fullyDilutedValuation,
    this.totalVolume,
    this.high24H,
    this.low24H,
    this.priceChange24H,
    this.priceChangePercentage24H,
    this.priceChangePercentage7D,
    this.priceChangePercentage14D,
    this.priceChangePercentage30D,
    this.priceChangePercentage60D,
    this.priceChangePercentage200D,
    this.priceChangePercentage1Y,
    this.marketCapChange24H,
    this.marketCapChangePercentage24H,
    this.priceChange24HInCurrency,
    this.priceChangePercentage1HInCurrency,
    this.priceChangePercentage24HInCurrency,
    this.priceChangePercentage7DInCurrency,
    this.priceChangePercentage14DInCurrency,
    this.priceChangePercentage30DInCurrency,
    this.priceChangePercentage60DInCurrency,
    this.priceChangePercentage200DInCurrency,
    this.priceChangePercentage1YInCurrency,
    this.marketCapChange24HInCurrency,
    this.marketCapChangePercentage24HInCurrency,
    this.totalSupply,
    this.maxSupply,
    this.circulatingSupply,
    this.lastUpdated,
  );

  @JsonKey(name: 'current_price')
  Map<String, double?>? currentPrice;
  Map<String, dynamic?>? roi;
  Map<String, double?>? ath;

  @JsonKey(name: 'ath_change_percentage')
  Map<String, double?>? athChangePercentage;

  @JsonKey(name: 'ath_date')
  Map<String, DateTime?>? athDate;

  Map<String, double?>? atl;

  @JsonKey(name: 'atl_change_percentage')
  Map<String, double?>? atlChangePercentage;

  @JsonKey(name: 'atl_date')
  Map<String, DateTime?>? atlDate;

  @JsonKey(name: 'maket_cap')
  Map<String, double?>? marketCap;

  @JsonKey(name: 'market_cap_rank')
  int? marketCapRank;

  @JsonKey(name: 'fully_diluted_valuation')
  Map<String, double?>? fullyDilutedValuation;

  @JsonKey(name: 'total_volume')
  Map<String, double?>? totalVolume;

  @JsonKey(name: 'high_24h')
  Map<String, double?>? high24H;

  @JsonKey(name: 'low_24h')
  Map<String, double?>? low24H;

  @JsonKey(name: 'price_change_24h')
  double? priceChange24H;

  @JsonKey(name: 'price_change_percentage_24h')
  double? priceChangePercentage24H;

  @JsonKey(name: 'price_change_percentage_7d')
  double? priceChangePercentage7D;

  @JsonKey(name: 'price_change_percentage_14d')
  double? priceChangePercentage14D;

  @JsonKey(name: 'price_change_percentage_30d')
  double? priceChangePercentage30D;

  @JsonKey(name: 'price_change_percentage_60d')
  double? priceChangePercentage60D;

  @JsonKey(name: 'price_change_percentage_200d')
  double? priceChangePercentage200D;

  @JsonKey(name: 'price_change_percentage_1y')
  double? priceChangePercentage1Y;

  @JsonKey(name: 'market_cap_change_24h')
  double? marketCapChange24H;

  @JsonKey(name: 'market_cap_change_percentage_24h')
  double? marketCapChangePercentage24H;

  @JsonKey(name: 'price_change_24h_in_currency')
  Map<String, double?>? priceChange24HInCurrency;

  @JsonKey(name: 'price_change_percentage_1h_in_currency')
  Map<String, double?>? priceChangePercentage1HInCurrency;

  @JsonKey(name: 'price_change_percentage_24h_in_currency')
  Map<String, double?>? priceChangePercentage24HInCurrency;

  @JsonKey(name: 'price_change_percentage_7d_in_currency')
  Map<String, double?>? priceChangePercentage7DInCurrency;

  @JsonKey(name: 'price_change_percentage_14d_in_currency')
  Map<String, double?>? priceChangePercentage14DInCurrency;

  @JsonKey(name: 'price_change_percentage_30d_in_currency')
  Map<String, double?>? priceChangePercentage30DInCurrency;

  @JsonKey(name: 'price_change_percentage_60d_in_currency')
  Map<String, double?>? priceChangePercentage60DInCurrency;

  @JsonKey(name: 'price_change_percentage_200d_in_currency')
  Map<String, double?>? priceChangePercentage200DInCurrency;

  @JsonKey(name: 'price_change_percentage_1y_in_currency')
  Map<String, double?>? priceChangePercentage1YInCurrency;

  @JsonKey(name: 'market_cap_change_24h_in_currency')
  Map<String, double?> ?marketCapChange24HInCurrency;

  @JsonKey(name: 'market_cap_change_percentage_24h_in_currency')
  Map<String, double?>? marketCapChangePercentage24HInCurrency;

  @JsonKey(name: 'total_supply')
  double? totalSupply;

  @JsonKey(name: 'max_supply')
  double? maxSupply;

  @JsonKey(name: 'circulating_supply')
  double? circulatingSupply;

  @JsonKey(name: 'last_updated')
  DateTime? lastUpdated;

  factory MarketData.fromJson(Map<String, dynamic> json) => _$MarketDataFromJson(json);

  Map<String, dynamic> toJson() => _$MarketDataToJson(this);
}