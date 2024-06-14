
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-simulations";
  version = "2.2.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/jazzy/turtlebot3_simulations/2.2.5-5.tar.gz";
    name = "2.2.5-5.tar.gz";
    sha256 = "9c272f0870dc8b366cb83501b1fb554df75256af193d9eb621aa7bb45187d559";
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
