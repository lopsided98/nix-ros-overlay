
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-simulations";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/rolling/turtlebot3_simulations/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "6f10c96576f262f17fb32ab62dd7685d0477d4347b46f3cd1547ddf7acd7018e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-fake-node turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 packages for TurtleBot3 simulations";
    license = with lib.licenses; [ asl20 ];
  };
}
