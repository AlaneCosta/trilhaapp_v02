import 'package:trilhaapp/model/card_datail.dart';

class CardDetailRepository {
  Future<CardDetail> get() async {
    await Future.delayed(const Duration(seconds: 3));
    return CardDetail(
      1,
      "Meu Card",
      "https://hermes.digitalinnovation.one/assets/diome/logo.png",
      "Lorem ipsum dolor sit amet. Qui totam debitis qui odio recusandae et dolorem sapiente. Est perspiciatis ipsum et consequatur voluptas ab odio vitae ut quasi internos eum expedita blanditiis non error voluptatem. Rem officiis quia sed quia eius et saepe eveniet. Aut blanditiis aperiam aut obcaecati eius ab dignissimos necessitatibus ut modi libero ad quia autem non amet perferendis ut rerum autem.",
    );
  }
}
