import 'package:lear_bloc/models/token_transaction.dart';

class TokenTransactionHistory {
  TokenTransactionHistory({this.id, this.tokenTransactions});
  String? id;
  List<TokenTransaction>? tokenTransactions = [];

  List<TokenTransaction>? get getTokenTransactions => this.tokenTransactions;

  factory TokenTransactionHistory.fromJson(Map<String, dynamic>? json) {
    List<TokenTransaction> tokenTransaction = [];

    if (json!['tokenTransactions'] != null) {
      json['tokenTransactions'].forEach((value) {
        tokenTransaction.add(TokenTransaction.fromJson(value));
      });
    }
    return TokenTransactionHistory(
      id: json['id'],
      tokenTransactions: tokenTransaction,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tokenTransactions': tokenTransactions,
    };
  }
}
