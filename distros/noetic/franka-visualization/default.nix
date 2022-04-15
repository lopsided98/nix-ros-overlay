
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-description, libfranka, roscpp, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-franka-visualization";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_visualization/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "a1da047e01bad191f935c70794cbad86971b5f134b26be18da9aa3253696fa7f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-description libfranka roscpp sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains visualization tools for Franka Emika.'';
    license = with lib.licenses; [ asl20 ];
  };
}
