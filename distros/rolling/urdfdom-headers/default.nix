
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-urdfdom-headers";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/rolling/urdfdom_headers/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "cf844d634438c62f851c05e51f1ef87f04272e0fd0945f3fe46f89df42c4f2cc";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ headers for URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
