
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pmb2-maps";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_maps/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "3ec53cffd6252dfe84d43958e4bdd1f54458e4125b0f8fe501ef9c45929ab763";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2-specific maps and launch files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
