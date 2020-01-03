
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-eloquent-sophus";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/eloquent/sophus/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "05cb4c409a00a1301c90c9d8d4784395550cb6404432193aef42356c8dd422be";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ mit ];
  };
}
