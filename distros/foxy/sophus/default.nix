
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-foxy-sophus";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/foxy/sophus/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "99781189c8556ca3e7e369b588103964bc1866e55a875b26aac9efb311f1b880";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ mit ];
  };
}
