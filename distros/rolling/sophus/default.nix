
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-sophus";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/rolling/sophus/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "0660ddc23df59a8e93afc0986ebb96994fffae20035a6de701675351dbc9ff8d";
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
