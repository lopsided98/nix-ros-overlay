
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-rolling-stomp";
  version = "0.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stomp-release/archive/release/rolling/stomp/0.1.2-4.tar.gz";
    name = "0.1.2-4.tar.gz";
    sha256 = "9a5a26bfcc2a92a8a27c21957111c2f4b0f9a4e2cce39e9202b08f69687b3388";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ console-bridge eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This package  provides the STOMP (Stochastic Trajectory Optimization for Motion Planning) algorithm that can be used for robot motion planning tasks or other similar optimization tasks";
    license = with lib.licenses; [ asl20 ];
  };
}
