
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-urdfdom-headers";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/dashing/urdfdom_headers/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "8b5183b319e8a3cc4892b38927af9046131f52a1704d88bd19c77ec705321c02";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ headers for URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
