
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-urdfdom-headers";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/lyrical/urdfdom_headers/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "5761e1e97fc2e71fa29724ef7dc49fa0c16604685f98fea3e5722637e40663f3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ headers for URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
