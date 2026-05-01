
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-lyrical-stomp";
  version = "0.1.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stomp-release/archive/release/lyrical/stomp/0.1.2-5.tar.gz";
    name = "0.1.2-5.tar.gz";
    sha256 = "86b1e2b7a9c80125981810788d8276f53df3b459e45f59a07e9b7e773c307062";
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
