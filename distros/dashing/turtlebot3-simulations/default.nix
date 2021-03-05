
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-simulations";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/dashing/turtlebot3_simulations/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "3616377a1d32e5e885eeaf869b02a7378c3559246ea81eae5dde099d42a49ecd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ turtlebot3-fake-node turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 packages for TurtleBot3 simulations'';
    license = with lib.licenses; [ asl20 ];
  };
}
