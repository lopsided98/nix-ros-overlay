
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-urdfdom-headers";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/foxy/urdfdom_headers/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "2f16837a20d3c4c1b2e1168bf3915b3f0c77d86b9b3f6be33248b6f38582e99a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ headers for URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
