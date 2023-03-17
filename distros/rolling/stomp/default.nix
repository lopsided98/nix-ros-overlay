
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-rolling-stomp";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stomp-release/archive/release/rolling/stomp/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "04e7268eaec5a65aad471567b70cf6d8f4c255639008a02c7dec529c0999eb9d";
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
