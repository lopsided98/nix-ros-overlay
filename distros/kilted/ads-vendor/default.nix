
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-kilted-ads-vendor";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/b-robotized/ads_vendor-release/archive/release/kilted/ads_vendor/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "f2c5ebeab813bf1fa7357b4464cff8c8003e26f5d79112d585ce910488e417c9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Package vendoring Beckhoff/ADS library";
    license = with lib.licenses; [ asl20 ];
  };
}
