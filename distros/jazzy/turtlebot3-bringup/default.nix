
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hls-lfcd-lds-driver, robot-state-publisher, rviz2, turtlebot3-description, turtlebot3-node }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-bringup";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_bringup/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "1d4cdbd0719362d75197edef49b3cc0261dc803fa4ee196db3d22c71c62372e0";
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
