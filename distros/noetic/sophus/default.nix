
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-noetic-sophus";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/noetic/sophus/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "91e49d8613c81936a3ffcc4121e6b02b8101bcdf23c59afcd063c24c0b078770";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ mit ];
  };
}
