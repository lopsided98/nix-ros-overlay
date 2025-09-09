
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav2-msgs, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-follower";
  version = "1.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/humble/turtlebot3_follower/1.3.3-2.tar.gz";
    name = "1.3.3-2.tar.gz";
    sha256 = "8f34071fda5b6dc79ddbd5e0e777912c6bed0fa4d5f1f801479145575d516824";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav2-msgs rclcpp std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TurtleBot3 Follower Example for ROS2.";
    license = with lib.licenses; [ asl20 ];
  };
}
