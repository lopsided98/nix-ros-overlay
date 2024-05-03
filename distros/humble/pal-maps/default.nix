
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pal-maps";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_maps-release/archive/release/humble/pal_maps/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "14cf53c8cbb4537d1b20e78ac293e15dfcd6be5d62befabf0bae78722b3fb003";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Public Maps used for the Navigation of PAL Robotics robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
