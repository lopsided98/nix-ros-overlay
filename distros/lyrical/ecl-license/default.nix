
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-ecl-license";
  version = "1.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/lyrical/ecl_license/1.0.3-6.tar.gz";
    name = "1.0.3-6.tar.gz";
    sha256 = "4d7b248b2de2e71552e1f27aaf4755fd24ff10d915d894f5fd71bb04ca2945b2";
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
