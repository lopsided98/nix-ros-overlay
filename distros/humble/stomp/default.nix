
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-humble-stomp";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stomp-release/archive/release/humble/stomp/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "cebc2cdf4351cb6594e9efa9e0ce66533f154a90e9336a63e96a6317000f5b97";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ console-bridge eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package  provides the STOMP (Stochastic Trajectory Optimization for Motion Planning) algorithm that can be used for robot motion planning tasks or other similar optimization tasks'';
    license = with lib.licenses; [ asl20 ];
  };
}
