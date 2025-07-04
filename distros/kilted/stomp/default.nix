
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-kilted-stomp";
  version = "0.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stomp-release/archive/release/kilted/stomp/0.1.2-4.tar.gz";
    name = "0.1.2-4.tar.gz";
    sha256 = "d51f110425d98d4f8fe1177075402fdcd296ba167e27764dbc3341c8dbc36d0e";
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
