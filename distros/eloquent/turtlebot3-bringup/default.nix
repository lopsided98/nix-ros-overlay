
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hls-lfcd-lds-driver, robot-state-publisher, rviz2, turtlebot3-description, turtlebot3-node }:
buildRosPackage {
  pname = "ros-eloquent-turtlebot3-bringup";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/eloquent/turtlebot3_bringup/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "924313ec66ad76575c17a05672e466815d0a35a69f127b3e3baedb098c7168a2";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ hls-lfcd-lds-driver robot-state-publisher rviz2 turtlebot3-description turtlebot3-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for starting the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
