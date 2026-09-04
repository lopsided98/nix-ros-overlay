
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, class-loader, eigen, geometric-shapes, interactive-markers, moveit-common, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, pkg-config, pluginlib, qt6, rclcpp, rclpy, rviz2, tf2-eigen }:
buildRosPackage {
  pname = "ros-lyrical-moveit-ros-visualization";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_ros_visualization/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "54c152ee842178e73124bb913645bdb821fdfdd3d1790ad6c20bdeed4c4bcd8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake class-loader eigen pkg-config qt6.qtbase ];
  propagatedBuildInputs = [ geometric-shapes interactive-markers moveit-common moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-warehouse object-recognition-msgs pluginlib rclcpp rclpy rviz2 tf2-eigen ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Components of MoveIt that offer visualization";
    license = with lib.licenses; [ bsd3 ];
  };
}
