
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-foxy-stomp";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stomp-release/archive/release/foxy/stomp/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "e52dc3059809a0dc73206c299d1309fbb79e00da108d0fba43f58dc6d2d596b3";
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
