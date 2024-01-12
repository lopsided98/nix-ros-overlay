
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-urdfdom-headers";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/iron/urdfdom_headers/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "58d0076bb63241b19bec2fc358b18ba837adaa49f3d5f6635d90c4c71b72d391";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ headers for URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
