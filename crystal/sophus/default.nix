
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-crystal-sophus";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/crystal/sophus/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "bf2d15f293ed5fc5710b76bf6be309ddee55b910a37f34cc259b69bce11ef6f2";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ mit ];
  };
}
