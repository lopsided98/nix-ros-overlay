
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hls-lfcd-lds-driver, robot-state-publisher, rviz2, turtlebot3-description, turtlebot3-node }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-bringup";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/humble/turtlebot3_bringup/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "a977ec054028a87f8e21ce5e44dae3fe7ffb4e23b78e181644317539075c9c06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hls-lfcd-lds-driver robot-state-publisher rviz2 turtlebot3-description turtlebot3-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for starting the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
