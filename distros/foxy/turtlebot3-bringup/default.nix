
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hls-lfcd-lds-driver, robot-state-publisher, rviz2, turtlebot3-description, turtlebot3-node }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-bringup";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/foxy/turtlebot3_bringup/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "18f26261cb89d0a90a532d38f560000b1f3f7c750b35b999986a4caf6f406a5f";
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
