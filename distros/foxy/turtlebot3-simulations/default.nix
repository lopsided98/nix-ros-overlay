
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-simulations";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/foxy/turtlebot3_simulations/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "c75666dd3406bec6dd0490246e77ac6d2dbbb2e6fbbcabe375e49216fcba3b7c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ turtlebot3-fake-node turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 packages for TurtleBot3 simulations'';
    license = with lib.licenses; [ asl20 ];
  };
}
