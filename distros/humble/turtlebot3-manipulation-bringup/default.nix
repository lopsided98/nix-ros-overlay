
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, ros2-control, ros2-controllers, rviz2, turtlebot3-manipulation-description, xacro }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-bringup";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_bringup/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "1cf39e7929defaee43b4562d284822f562c50cd9a81ed32c06f08bb5d2499127";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher ros2-control ros2-controllers rviz2 turtlebot3-manipulation-description xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 package for turtlebot3_manipulation";
    license = with lib.licenses; [ asl20 ];
  };
}
