
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-noetic-sophus";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/noetic/sophus/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c30680143378020b2b52ef83dfb48855b47ca7c894166649c34f01c00ee6dc04";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ mit ];
  };
}
