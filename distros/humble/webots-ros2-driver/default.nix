
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, geometry-msgs, pluginlib, python-cmake-module, rclcpp, rclpy, ros-environment, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, tinyxml2-vendor, vision-msgs, webots-ros2-importer, webots-ros2-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-driver";
  version = "2023.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_driver/2023.1.1-2.tar.gz";
    name = "2023.1.1-2.tar.gz";
    sha256 = "356ab68445bb7a1303f5ecc264e44d34d89e41c062da63731e0e564c19dbe22a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python-cmake-module ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs pluginlib rclcpp rclpy sensor-msgs std-msgs tf2-geometry-msgs tf2-ros tinyxml2-vendor vision-msgs webots-ros2-importer webots-ros2-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = ''Implementation of the Webots - ROS 2 interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
