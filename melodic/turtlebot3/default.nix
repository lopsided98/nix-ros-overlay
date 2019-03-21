
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot3-navigation, catkin, turtlebot3-slam, turtlebot3-description, turtlebot3-bringup, turtlebot3-example, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3/1.2.0-0.tar.gz;
    sha256 = "23abc6a162dc77a97d154c591285f8c235c2afe0c2906185a91ccec0a80a2b1c";
  };

  propagatedBuildInputs = [ turtlebot3-slam turtlebot3-bringup turtlebot3-example turtlebot3-teleop turtlebot3-navigation turtlebot3-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the Turtlebot3 (meta package)'';
    #license = lib.licenses.Apache 2.0;
  };
}
