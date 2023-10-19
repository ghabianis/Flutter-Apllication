import 'package:flutter/material.dart';

class GlobalParams {
  static List<Map<String, dynamic>> menu = [
    {
      "title": "Accueil",
      "icon": const Icon(
        Icons.home,
        color: Colors.orange,
      ),
      "route": "/home"
    },
    {
      "title": "Météo",
      "icon": const Icon(
        Icons.sunny_snowing,
        color: Colors.orange,
      ),
      "route": "/menu/meteo"
    },
    {
      "title": "Gallerie",
      "icon": const Icon(
        Icons.image,
        color: Colors.orange,
      ),
      "route": "/menu/galery"
    },
    {
      "title": "Pays",
      "icon": const Icon(
        Icons.location_city,
        color: Colors.orange,
      ),
      "route": "/menu/pays"
    },
    {
      "title": "Contact",
      "icon": const Icon(
        Icons.contact_mail,
        color: Colors.orange,
      ),
      "route": "/menu/contact"
    },
    {
      "title": "Paramétres",
      "icon": const Icon(
        Icons.contact_mail,
        color: Colors.orange,
      ),
      "route": "/menu/contact"
    },
    {
      "title": "Déconnexion",
      "icon": const Icon(
        Icons.contact_mail,
        color: Colors.orange,
      ),
      "route": "/authentification"
    }
  ];
  static List<Map<String, dynamic>> accueil = [
    {"image": "images/meteo.png", "routes": "/menu/meteo"},
    {"image": "images/image.png", "routes": "/menu/gallerie"},
    {"image": "images/params.png", "routes": "/menu/parametres"},
    {"image": "images/country.png", "routes": "/menu/pays"}
  ];
}
