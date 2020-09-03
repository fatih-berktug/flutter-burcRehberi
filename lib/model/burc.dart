class Burc{

  String _burcAdi;
  String _burcTarihi;
  String _burcDetay;
  String _burcKucukResim;
  String _burcBuyukResim;

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }

  Burc(this._burcAdi, this._burcTarihi, this._burcDetay, this._burcKucukResim,
      this._burcBuyukResim);

  String get burcTarihi => _burcTarihi;

  String get burcBuyukResim => _burcBuyukResim;

  set burcBuyukResim(String value) {
    _burcBuyukResim = value;
  }

  String get burcKucukResim => _burcKucukResim;

  set burcKucukResim(String value) {
    _burcKucukResim = value;
  }

  String get burcDetay => _burcDetay;

  set burcDetay(String value) {
    _burcDetay = value;
  }

  set burcTarihi(String value) {
    _burcTarihi = value;
  }
}