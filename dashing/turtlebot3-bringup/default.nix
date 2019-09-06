
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz2, ament-cmake, turtlebot3-node, turtlebot3-description, robot-state-publisher, hls-lfcd-lds-driver }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-bringup";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_bringup/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "10848088a1244839b21166d0e9f9822710d4558c8d2752598f679b593d6d21a3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rviz2 turtlebot3-node turtlebot3-description robot-state-publisher hls-lfcd-lds-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for starting the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
