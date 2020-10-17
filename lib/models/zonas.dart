class Zona {
  int id;
  String title;
  String image;

  Zona(this.id, this.title, this.image);
}

List<Zona> zonas = [
  Zona(1, 'San José', 'assets/images/zonas_san_icon.png'),
  Zona(2, 'Cartago', 'assets/images/zonas_cartago_icon.png'),
  Zona(3, 'Heredia', 'assets/images/zonas_heredia_icon.png'),
  Zona(4, 'Alajuela', 'assets/images/zonas_alajuela.png'),
  Zona(5, 'Guanacaste', 'assets/images/zonas_guanacaste_icon.png'),
  Zona(6, 'Puntarenas', 'assets/images/zonas_puntarenas_icon.png'),
  Zona(7, 'Limón', 'assets/images/zonas_limon_icon.png'),
];

class BikePark {
  int id;
  String title;
  String image;

  BikePark(this.id, this.title, this.image);
}

List<BikePark> bikeParks = [
  BikePark(1, 'La Angelina', 'assets/images/zonas_park.png'),
  BikePark(2, 'La Angelina', 'assets/images/zonas_park.png'),
  BikePark(3, 'La Angelina', 'assets/images/zonas_park.png'),
  BikePark(4, 'La Angelina', 'assets/images/zonas_park.png'),
  BikePark(5, 'La Angelina', 'assets/images/zonas_park.png'),
  BikePark(6, 'La Angelina', 'assets/images/zonas_park.png'),
  BikePark(7, 'La Angelina', 'assets/images/zonas_park.png'),
];

class Ciclo {
  int id;
  String title;
  String image;

  Ciclo(this.id, this.title, this.image);
}

List<Ciclo> ciclos = [
  Ciclo(1, 'Innovabikes', 'assets/images/zonas_ciclos.png'),
  Ciclo(2, 'Innovabikes', 'assets/images/rectangle_grey.png'),
  Ciclo(3, 'Innovabikes', 'assets/images/rectangle_grey.png'),
  Ciclo(4, 'Innovabikes', 'assets/images/rectangle_grey.png'),
  Ciclo(5, 'Innovabikes', 'assets/images/rectangle_grey.png'),
  Ciclo(6, 'Innovabikes', 'assets/images/rectangle_grey.png'),
  Ciclo(7, 'Innovabikes', 'assets/images/rectangle_grey.png'),
];