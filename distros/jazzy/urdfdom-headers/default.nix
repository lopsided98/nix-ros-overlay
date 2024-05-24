
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-urdfdom-headers";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/jazzy/urdfdom_headers/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "1b24395aeb073855ddb1c9fec92002e2226d926249fe55a8cc1f2e2185b47713";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ headers for URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
