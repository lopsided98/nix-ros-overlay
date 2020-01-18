
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-eloquent-urdfdom-headers";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/eloquent/urdfdom_headers/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "c5ff11ecbc0e59c6e0c6ea977bf1369ca47ca64ef7fc6cb788a8a5a670d45b68";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ headers for URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
