
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-jazzy-stomp";
  version = "0.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stomp-release/archive/release/jazzy/stomp/0.1.2-4.tar.gz";
    name = "0.1.2-4.tar.gz";
    sha256 = "700823760aecf0851b9f310053be8e85277989e5ca787d003655df1b3f275f2e";
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
