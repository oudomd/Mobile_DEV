import 'package:flutter/material.dart';

import '../model/profile_tile_model.dart';

ProfileData ronanProfile = ProfileData(
  name: "Ronan",
  position: "Flutter Developer",
  avatarUrl: 'assets/w5-s2/aang.png',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "monyoudomd@cadt.edu"),
  ],
);

ProfileData oudomProfile1 = ProfileData(
  name: "Oudom",
  position: "Hacker",
  avatarUrl: 'assets/w5-s2/aang.png',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 031"),
    TileData(icon: Icons.location_on, title: "Address", value: "321 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "monyoudomd@cadt.edu"),
  ],
);
