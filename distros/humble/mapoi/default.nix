
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mapoi-interfaces, mapoi-rviz-plugins, mapoi-server, mapoi-webui }:
buildRosPackage {
  pname = "ros-humble-mapoi";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/humble/mapoi/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "33a6a2b0c40ba4d14da4fcc78fe8158276163d69d5c057a1630b67cd45f75865";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ mapoi-interfaces mapoi-rviz-plugins mapoi-server mapoi-webui ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for mapoi: map and POI management for Navigation2";
    license = with lib.licenses; [ mit ];
  };
}
