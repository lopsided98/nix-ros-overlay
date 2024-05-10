
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-omni-base-maps";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_maps/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "c21b30e36f413e7b836b459003b0d70fc85fce465250d59c864ad984dfb06b6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific maps and launch files.";
    license = with lib.licenses; [ asl20 ];
  };
}
