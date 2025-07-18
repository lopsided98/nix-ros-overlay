
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-ecl-license";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/kilted/ecl_license/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "320615ace834f1db5d967bd12695c84ac03e5e23ee092d96aea908f35b989936";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
