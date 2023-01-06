
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-sophus";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/rolling/sophus/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "0b01bf06f4972347940e569569a0b064ca930e3536f89862a728a09286b4de29";
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
