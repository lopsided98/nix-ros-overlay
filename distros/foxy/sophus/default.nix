
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-foxy-sophus";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/foxy/sophus/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "a89b3dcf9f6149d18062537ecd7bbfa48573b73c7d912bc43c12e0beff173f28";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ mit ];
  };
}
