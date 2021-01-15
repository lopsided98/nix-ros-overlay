
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-dashing-sophus";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/dashing/sophus/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "50515a277a3145d2a6410061c102e38b7d9a0c4d0bda4f9fd31240872e3cbd98";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ mit ];
  };
}
