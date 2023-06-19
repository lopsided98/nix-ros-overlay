
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, eigen, geometric-shapes, interactive-markers, moveit-common, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, pkg-config, pluginlib, qt5, rclcpp, rclpy, rviz2, tf2-eigen }:
buildRosPackage {
  pname = "ros-iron-moveit-ros-visualization";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_ros_visualization/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "c5fcdfbcf589fe8b42b3326c2aa3dbb97337b2c8afae6f62b159e84163ddc19a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake class-loader eigen pkg-config qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometric-shapes interactive-markers moveit-common moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-warehouse object-recognition-msgs pluginlib rclcpp rclpy rviz2 tf2-eigen ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Components of MoveIt that offer visualization'';
    license = with lib.licenses; [ bsd3 ];
  };
}
