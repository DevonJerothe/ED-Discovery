class Search {
  Filters filters;
  int page;
  String referenceSystem;
  int size;
  List<Sort> sort;

  Search({this.filters, this.page, this.referenceSystem, this.size, this.sort});

  Search.fromJson(Map<String, dynamic> json) {
    filters =
        json['filters'] != null ? new Filters.fromJson(json['filters']) : null;
    page = json['page'];
    referenceSystem = json['reference_system'];
    size = json['size'];
    if (json['sort'] != null) {
      sort = new List<Sort>();
      json['sort'].forEach((v) {
        sort.add(new Sort.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.filters != null) {
      data['filters'] = this.filters.toJson();
    }
    data['page'] = this.page;
    data['reference_system'] = this.referenceSystem;
    data['size'] = this.size;
    if (this.sort != null) {
      data['sort'] = this.sort.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Filters {
  DistanceFromCoords distanceFromCoords;
  Name name;
  SystemName systemName;
  List<Market> market;

  Filters({this.distanceFromCoords, this.market, this.name, this.systemName});

  Filters.fromJson(Map<String, dynamic> json) {
    distanceFromCoords = json['distance_from_coords'] != null
        ? new DistanceFromCoords.fromJson(json['distance_from_coords'])
        : null;
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    systemName = json['system_name'] != null
        ? new SystemName.fromJson(json['system_name'])
        : null;
    if (json['market'] != null) {
      market = new List<Market>();
      json['market'].forEach((v) {
        market.add(new Market.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.distanceFromCoords != null) {
      data['distance_from_coords'] = this.distanceFromCoords.toJson();
    }
    if (this.market != null) {
      data['market'] = this.market.map((v) => v.toJson()).toList();
    }
    if (this.name != null) {
      data['name'] = this.name.toJson();
    }
    if (this.systemName != null) {
      data['system_name'] = this.systemName.toJson();
    }
    return data;
  }
}

class Name {
  String value;

  Name({this.value});

  Name.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    return data;
  }
}

class SystemName {
  String value;

  SystemName({this.value});

  SystemName.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    return data;
  }
}

class DistanceFromCoords {
  String max;
  int min;

  DistanceFromCoords({this.max, this.min});

  DistanceFromCoords.fromJson(Map<String, dynamic> json) {
    max = json['max'];
    min = json['min'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['max'] = this.max;
    data['min'] = this.min;
    return data;
  }
}

class Market {
  BuyPrice buyPrice;
  BuyPrice demand;
  String name;
  BuyPrice sellPrice;
  BuyPrice supply;

  Market({this.buyPrice, this.demand, this.name, this.sellPrice, this.supply});

  Market.fromJson(Map<String, dynamic> json) {
    buyPrice = json['buy_price'] != null
        ? new BuyPrice.fromJson(json['buy_price'])
        : null;
    demand =
        json['demand'] != null ? new BuyPrice.fromJson(json['demand']) : null;
    name = json['name'];
    sellPrice = json['sell_price'] != null
        ? new BuyPrice.fromJson(json['sell_price'])
        : null;
    supply =
        json['supply'] != null ? new BuyPrice.fromJson(json['supply']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.buyPrice != null) {
      data['buy_price'] = this.buyPrice.toJson();
    }
    if (this.demand != null) {
      data['demand'] = this.demand.toJson();
    }
    data['name'] = this.name;
    if (this.sellPrice != null) {
      data['sell_price'] = this.sellPrice.toJson();
    }
    if (this.supply != null) {
      data['supply'] = this.supply.toJson();
    }
    return data;
  }
}

class BuyPrice {
  String comparison;
  List<int> value;

  BuyPrice({this.comparison, this.value});

  BuyPrice.fromJson(Map<String, dynamic> json) {
    comparison = json['comparison'];
    value = json['value'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['comparison'] = this.comparison;
    data['value'] = this.value;
    return data;
  }
}

class Sort {
  List<MarketBuyPrice> marketBuyPrice;

  Sort({this.marketBuyPrice});

  Sort.fromJson(Map<String, dynamic> json) {
    if (json['market_buy_price'] != null) {
      marketBuyPrice = new List<MarketBuyPrice>();
      json['market_buy_price'].forEach((v) {
        marketBuyPrice.add(new MarketBuyPrice.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.marketBuyPrice != null) {
      data['market_buy_price'] =
          this.marketBuyPrice.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MarketBuyPrice {
  String direction;
  String name;

  MarketBuyPrice({this.direction, this.name});

  MarketBuyPrice.fromJson(Map<String, dynamic> json) {
    direction = json['direction'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['direction'] = this.direction;
    data['name'] = this.name;
    return data;
  }
}
