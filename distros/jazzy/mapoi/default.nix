
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mapoi-interfaces, mapoi-rviz-plugins, mapoi-server, mapoi-webui }:
buildRosPackage {
  pname = "ros-jazzy-mapoi";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/jazzy/mapoi/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "f4a156c783b36a5a52720b35cf92cb450bfcd73cdd1aba65a44ad7fda0587bff";
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
