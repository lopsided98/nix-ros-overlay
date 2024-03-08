
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-sophus";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/rolling/sophus/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "62bf548430e63dd485903fac8cc98d0535a9c64905e8d1a7a2aeed293de1c8cf";
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
