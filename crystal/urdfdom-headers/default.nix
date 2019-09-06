
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-crystal-urdfdom-headers";
  version = "1.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/crystal/urdfdom_headers/1.0.2-1.tar.gz;
    sha256 = "57ca69ecd0c2de926bc758d5f7a32dce4cd2ebc7f902c69b22ee34f9647e62fa";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ headers for URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
