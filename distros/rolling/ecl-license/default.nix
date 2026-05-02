
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ecl-license";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/rolling/ecl_license/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "7cc342dd7779e3d85c885c7d8c1f86b87efdb1734dfd5c80965f6987f6b3a3d0";
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
