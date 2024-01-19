
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-urdfdom-headers";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/rolling/urdfdom_headers/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "a0f1bb8337a2e74ec1e58b8346f3557370859559217324fa15356e557b42de86";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ headers for URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
