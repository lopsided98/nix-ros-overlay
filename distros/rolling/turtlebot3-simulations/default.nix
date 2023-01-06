
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-simulations";
  version = "2.2.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/rolling/turtlebot3_simulations/2.2.5-2.tar.gz";
    name = "2.2.5-2.tar.gz";
    sha256 = "fead2502c484e06cefbd6681fa5a5b92b9a21af96d99bb608a392084f2a49c9b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-fake-node turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 packages for TurtleBot3 simulations'';
    license = with lib.licenses; [ asl20 ];
  };
}
