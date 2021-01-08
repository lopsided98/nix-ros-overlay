
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-description, libfranka, roscpp, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-franka-visualization";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_visualization/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "f0d014444f47c26ee1c42ebd023d84cdc211c085d4478e2d19ad9bef1c6725df";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-description libfranka roscpp sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains visualization tools for Franka Emika.'';
    license = with lib.licenses; [ asl20 ];
  };
}
