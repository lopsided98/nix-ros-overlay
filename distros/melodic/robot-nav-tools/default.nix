
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, color-util, robot-nav-rviz-plugins, robot-nav-viz-demos }:
buildRosPackage {
  pname = "ros-melodic-robot-nav-tools";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/robot_nav_tools/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "ec2c54c729dc7a39ceb2b55d3f1b261b68fa7e91d6d8b2b4c6a2c067dcd29204";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ color-util robot-nav-rviz-plugins robot-nav-viz-demos ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools / accessories for the robot_navigation packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
