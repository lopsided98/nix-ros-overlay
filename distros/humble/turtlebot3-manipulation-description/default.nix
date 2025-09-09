
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-description";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_description/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "9004bdbfeaefc478e3f68280e89ecb3126fcf0499ccb9a71a1c668af362812af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 package for turtlebot3_manipulation_description";
    license = with lib.licenses; [ asl20 ];
  };
}
