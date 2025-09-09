
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav2-msgs, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-follower";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/jazzy/turtlebot3_follower/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "8288c9b062a43ee9e209ff615d560c3f0bf44ddad2f91871534d9346fd5f56b7";
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
