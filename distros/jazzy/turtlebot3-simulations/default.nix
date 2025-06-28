
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-simulations";
  version = "2.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/jazzy/turtlebot3_simulations/2.3.5-1.tar.gz";
    name = "2.3.5-1.tar.gz";
    sha256 = "5f185fa1bec85e4e6d6255becb9eaf8ae2d8c97560e0917e16bc392607edd50b";
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
