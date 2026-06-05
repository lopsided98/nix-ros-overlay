
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-urdfdom-headers";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/jazzy/urdfdom_headers/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "6555d1109477b288e9b5b654d64571a629e283a01347599b58d7d0c2b841c52b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ headers for URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
