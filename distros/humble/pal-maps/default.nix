
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pal-maps";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_maps-release/archive/release/humble/pal_maps/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "2bff0d2c72e1087a94187f17031dcc02cc66a26c705cbf895d1c1ab46642651a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Public Maps used for the Navigation of PAL Robotics robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
