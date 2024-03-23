
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-rolling-stomp";
  version = "0.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stomp-release/archive/release/rolling/stomp/0.1.2-3.tar.gz";
    name = "0.1.2-3.tar.gz";
    sha256 = "722fb9bfc9292b0b175850a26c5bc43ad1f9b8ff51d68b6ef8bc49c3d5e69d7e";
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
