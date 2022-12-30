import 'package:hyperpay/hyperpay.dart';

class TestConfig implements HyperpayConfig {
  @override
  String? creditcardEntityID = '8a8294174d0595bb014d05d82e5b01d2';
  @override
  String? madaEntityID = '';
  @override
  String? applePayEntityID = '';
  @override
  Uri checkoutEndpoint = _checkoutEndpoint;
  @override
  Uri statusEndpoint = _statusEndpoint;
  @override
  PaymentMode paymentMode = PaymentMode.test;
}

class LiveConfig implements HyperpayConfig {
  @override
  String? creditcardEntityID = '';
  @override
  String? madaEntityID = '';
  @override
  String? applePayEntityID = '';
  @override
  Uri checkoutEndpoint = _checkoutEndpoint;
  @override
  Uri statusEndpoint = _statusEndpoint;
  @override
  PaymentMode paymentMode = PaymentMode.live;
}

// Setup using your own endpoints.
// https://wordpresshyperpay.docs.oppwa.com/tutorials/mobile-sdk/integration/server.

String _host = 'eu-test.oppwa.com';

Uri _checkoutEndpoint = Uri(
  scheme: 'https',
  host: _host,
  path: '/v1/checkouts',
);

Uri _statusEndpoint = Uri(
  scheme: 'https',
  host: _host,
  path: '',
);
