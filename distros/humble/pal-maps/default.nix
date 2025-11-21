
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pal-maps";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_maps-release/archive/release/humble/pal_maps/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "4845cf765ac596b2c53e8ad2db14bea188248bd30d8e7c988bb4a31843ff9b1e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Public Maps used for the Navigation of PAL Robotics robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
