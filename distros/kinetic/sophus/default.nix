
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen }:
buildRosPackage {
  pname = "ros-kinetic-sophus";
  version = "0.9.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/kinetic/sophus/0.9.1-0.tar.gz";
    name = "0.9.1-0.tar.gz";
    sha256 = "9cdcd5a6ddc898b2ee5fd6d279d4273c44bde127e74b63edefbfe0a3f795815b";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
