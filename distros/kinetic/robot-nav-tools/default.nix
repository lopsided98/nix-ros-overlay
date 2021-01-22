
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, color-util, robot-nav-rviz-plugins, robot-nav-viz-demos }:
buildRosPackage {
  pname = "ros-kinetic-robot-nav-tools";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/robot_nav_tools/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "cf049856032b0e7602c24a0fef811a3ee313cbed7b260ac8172afd9f48ba13bc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ color-util robot-nav-rviz-plugins robot-nav-viz-demos ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools / accessories for the robot_navigation packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
