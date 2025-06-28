
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, geometry-msgs, pluginlib, python-cmake-module, rclcpp, rclpy, ros-environment, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, tinyxml2-vendor, vision-msgs, webots-ros2-importer, webots-ros2-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-driver";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_driver/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "96d81ef75c632db95bcaf139008266af2204677fc2119c6f37be92c4817953ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python-cmake-module ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs pluginlib rclcpp rclpy sensor-msgs std-msgs tf2-geometry-msgs tf2-ros tinyxml2-vendor vision-msgs webots-ros2-importer webots-ros2-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = "Implementation of the Webots - ROS 2 interface";
    license = with lib.licenses; [ asl20 ];
  };
}
