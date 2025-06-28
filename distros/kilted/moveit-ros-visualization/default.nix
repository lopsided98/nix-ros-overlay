
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, class-loader, eigen, geometric-shapes, interactive-markers, moveit-common, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, pkg-config, pluginlib, qt5, rclcpp, rclpy, rviz2, tf2-eigen }:
buildRosPackage {
  pname = "ros-kilted-moveit-ros-visualization";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_ros_visualization/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "51b119e7f2fd696946a4370af8f34b3f6df22e1cce5a6d6602a72bb03ba63655";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake class-loader eigen pkg-config qt5.qtbase ];
  propagatedBuildInputs = [ geometric-shapes interactive-markers moveit-common moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-warehouse object-recognition-msgs pluginlib rclcpp rclpy rviz2 tf2-eigen ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Components of MoveIt that offer visualization";
    license = with lib.licenses; [ bsd3 ];
  };
}
