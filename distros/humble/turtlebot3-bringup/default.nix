
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hls-lfcd-lds-driver, robot-state-publisher, rviz2, turtlebot3-description, turtlebot3-node }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-bringup";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_bringup/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "84e67cbdddc2c45386b017420cc4943df3096ddc6977ec40f4f22ef9731ecc79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hls-lfcd-lds-driver robot-state-publisher rviz2 turtlebot3-description turtlebot3-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 launch scripts for starting the TurtleBot3";
    license = with lib.licenses; [ asl20 ];
  };
}
