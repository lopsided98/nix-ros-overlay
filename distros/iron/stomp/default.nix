
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-iron-stomp";
  version = "0.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stomp-release/archive/release/iron/stomp/0.1.2-3.tar.gz";
    name = "0.1.2-3.tar.gz";
    sha256 = "472ee04946249933c3696b70224edeb8fdb2e775800238adb8f969ae271c4bb5";
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
