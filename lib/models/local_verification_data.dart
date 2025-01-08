class LocalVerificationData {
  LocalVerificationData({
    this.orderId,
    this.packageName,
    this.productId,
    this.purchaseTime,
    this.purchaseState,
    this.purchaseToken,
    this.quantity,
    this.autoRenewing,
    this.acknowledged,
  });

  String? orderId;
  String? packageName;
  String? productId;
  int? purchaseTime;
  int? purchaseState;
  String? purchaseToken;
  int? quantity;
  bool? autoRenewing;
  bool? acknowledged;

  factory LocalVerificationData.fromJson(Map<String, dynamic> json) {
    return LocalVerificationData(
      orderId: json['orderId'],
      packageName: json['packageName'],
      productId: json['productId'],
      purchaseTime: json['purchaseTime'],
      purchaseState: json['purchaseState'],
      purchaseToken: json['purchaseToken'],
      quantity: json['quantity'],
      autoRenewing: json['autoRenewing'],
      acknowledged: json['acknowledged'],
    );
  }

  Map<String, dynamic>? toJson() {
    return {
      'orderId': this.orderId,
      'packageName': this.packageName,
      'productId': this.productId,
      'purchaseTime': this.purchaseTime,
      'purchaseState': this.purchaseState,
      'purchaseToken': this.purchaseToken,
      'quantity': this.quantity,
      'autoRenewing': this.autoRenewing,
      'acknowledged': this.acknowledged,
    };
  }
}
