
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-bringup, turtlebot3-description, turtlebot3-example, turtlebot3-navigation, turtlebot3-slam, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/noetic/turtlebot3/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "da6560f64cd517b240645aa5def7d0e983e0d47b23c672b60ad181f5ebd4f688";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtlebot3-bringup turtlebot3-description turtlebot3-example turtlebot3-navigation turtlebot3-slam turtlebot3-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the Turtlebot3 (meta package)'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
