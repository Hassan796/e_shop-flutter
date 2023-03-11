class CartModel {
  String? _itemsprice;
  String? _countitems;
  String? _cartId;
  String? _cartUsersid;
  String? _cartItemsid;
  String? _itemsId;
  String? _itemsName;
  String? _itemsNameAr;
  String? _itemsDesc;
  String? _itemsDescAr;
  String? _itemsImage;
  String? _itemsCount;
  String? _itemsActive;
  String? _itemsPrice;
  String? _itemsDiscount;
  String? _itemsDate;
  String? _itemsCat;

  cartModel(
      {String? itemsprice,
      String? countitems,
      String? cartId,
      String? cartUsersid,
      String? cartItemsid,
      String? itemsId,
      String? itemsName,
      String? itemsNameAr,
      String? itemsDesc,
      String? itemsDescAr,
      String? itemsImage,
      String? itemsCount,
      String? itemsActive,
      String? itemsPrice,
      String? itemsDiscount,
      String? itemsDate,
      String? itemsCat}) {
    if (itemsprice != null) {
      this._itemsprice = itemsprice;
    }
    if (countitems != null) {
      this._countitems = countitems;
    }
    if (cartId != null) {
      this._cartId = cartId;
    }
    if (cartUsersid != null) {
      this._cartUsersid = cartUsersid;
    }
    if (cartItemsid != null) {
      this._cartItemsid = cartItemsid;
    }
    if (itemsId != null) {
      this._itemsId = itemsId;
    }
    if (itemsName != null) {
      this._itemsName = itemsName;
    }
    if (itemsNameAr != null) {
      this._itemsNameAr = itemsNameAr;
    }
    if (itemsDesc != null) {
      this._itemsDesc = itemsDesc;
    }
    if (itemsDescAr != null) {
      this._itemsDescAr = itemsDescAr;
    }
    if (itemsImage != null) {
      this._itemsImage = itemsImage;
    }
    if (itemsCount != null) {
      this._itemsCount = itemsCount;
    }
    if (itemsActive != null) {
      this._itemsActive = itemsActive;
    }
    if (itemsPrice != null) {
      this._itemsPrice = itemsPrice;
    }
    if (itemsDiscount != null) {
      this._itemsDiscount = itemsDiscount;
    }
    if (itemsDate != null) {
      this._itemsDate = itemsDate;
    }
    if (itemsCat != null) {
      this._itemsCat = itemsCat;
    }
  }

  String? get itemsprice => _itemsprice;
  set itemsprice(String? itemsprice) => _itemsprice = itemsprice;
  String? get countitems => _countitems;
  set countitems(String? countitems) => _countitems = countitems;
  String? get cartId => _cartId;
  set cartId(String? cartId) => _cartId = cartId;
  String? get cartUsersid => _cartUsersid;
  set cartUsersid(String? cartUsersid) => _cartUsersid = cartUsersid;
  String? get cartItemsid => _cartItemsid;
  set cartItemsid(String? cartItemsid) => _cartItemsid = cartItemsid;
  String? get itemsId => _itemsId;
  set itemsId(String? itemsId) => _itemsId = itemsId;
  String? get itemsName => _itemsName;
  set itemsName(String? itemsName) => _itemsName = itemsName;
  String? get itemsNameAr => _itemsNameAr;
  set itemsNameAr(String? itemsNameAr) => _itemsNameAr = itemsNameAr;
  String? get itemsDesc => _itemsDesc;
  set itemsDesc(String? itemsDesc) => _itemsDesc = itemsDesc;
  String? get itemsDescAr => _itemsDescAr;
  set itemsDescAr(String? itemsDescAr) => _itemsDescAr = itemsDescAr;
  String? get itemsImage => _itemsImage;
  set itemsImage(String? itemsImage) => _itemsImage = itemsImage;
  String? get itemsCount => _itemsCount;
  set itemsCount(String? itemsCount) => _itemsCount = itemsCount;
  String? get itemsActive => _itemsActive;
  set itemsActive(String? itemsActive) => _itemsActive = itemsActive;
  String? get itemsPrice => _itemsPrice;
  set itemsPrice(String? itemsPrice) => _itemsPrice = itemsPrice;
  String? get itemsDiscount => _itemsDiscount;
  set itemsDiscount(String? itemsDiscount) => _itemsDiscount = itemsDiscount;
  String? get itemsDate => _itemsDate;
  set itemsDate(String? itemsDate) => _itemsDate = itemsDate;
  String? get itemsCat => _itemsCat;
  set itemsCat(String? itemsCat) => _itemsCat = itemsCat;

  CartModel.fromJson(Map<String, dynamic> json) {
    _itemsprice = json['itemsprice'];
    _countitems = json['countitems'];
    _cartId = json['cart_id'];
    _cartUsersid = json['cart_usersid'];
    _cartItemsid = json['cart_itemsid'];
    _itemsId = json['items_id'];
    _itemsName = json['items_name'];
    _itemsNameAr = json['items_name_ar'];
    _itemsDesc = json['items_desc'];
    _itemsDescAr = json['items_desc_ar'];
    _itemsImage = json['items_image'];
    _itemsCount = json['items_count'];
    _itemsActive = json['items_active'];
    _itemsPrice = json['items_price'];
    _itemsDiscount = json['items_discount'];
    _itemsDate = json['items_date'];
    _itemsCat = json['items_cat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemsprice'] = this._itemsprice;
    data['countitems'] = this._countitems;
    data['cart_id'] = this._cartId;
    data['cart_usersid'] = this._cartUsersid;
    data['cart_itemsid'] = this._cartItemsid;
    data['items_id'] = this._itemsId;
    data['items_name'] = this._itemsName;
    data['items_name_ar'] = this._itemsNameAr;
    data['items_desc'] = this._itemsDesc;
    data['items_desc_ar'] = this._itemsDescAr;
    data['items_image'] = this._itemsImage;
    data['items_count'] = this._itemsCount;
    data['items_active'] = this._itemsActive;
    data['items_price'] = this._itemsPrice;
    data['items_discount'] = this._itemsDiscount;
    data['items_date'] = this._itemsDate;
    data['items_cat'] = this._itemsCat;
    return data;
  }
}
