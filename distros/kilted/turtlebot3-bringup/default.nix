
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hls-lfcd-lds-driver, robot-state-publisher, rviz2, turtlebot3-description, turtlebot3-node }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-bringup";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/kilted/turtlebot3_bringup/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "c2a2d53d27ae20b90668dbd8c1061bfea2451218776ad1506305b5f7b5ba28f4";
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
