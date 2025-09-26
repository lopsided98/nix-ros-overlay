
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-rolling-ads-vendor";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/b-robotized/ads_vendor-release/archive/release/rolling/ads_vendor/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "25e566e2d9dd0f736cf5a0ca7d2b8661092f2646704976b68cf10977b4b6bd98";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Package vendoring Beckhoff/ADS library";
    license = with lib.licenses; [ asl20 ];
  };
}
