
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-autorace-camera, turtlebot3-autorace-core, turtlebot3-autorace-detect, turtlebot3-autorace-driving, turtlebot3-autorace-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-2020";
  version = "1.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace_2020_release/archive/release/noetic/turtlebot3_autorace_2020/1.1.0-7.tar.gz";
    name = "1.1.0-7.tar.gz";
    sha256 = "e41b55aafd603d76d2b6270a4ed9a2d771da7ac15e90f34823c95a3a432bfac7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot3-autorace-camera turtlebot3-autorace-core turtlebot3-autorace-detect turtlebot3-autorace-driving turtlebot3-autorace-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace 2020 ROS 1 packages (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
