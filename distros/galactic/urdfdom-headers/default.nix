
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-urdfdom-headers";
  version = "1.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/galactic/urdfdom_headers/1.0.5-3.tar.gz";
    name = "1.0.5-3.tar.gz";
    sha256 = "c90f598d305fdf9908dd10d8f88e7a0cd4f7ce5ff38b15f348215421043dfefb";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ headers for URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
