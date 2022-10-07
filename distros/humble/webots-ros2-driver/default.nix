
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, geometry-msgs, pluginlib, python-cmake-module, rclcpp, rclpy, ros-environment, sensor-msgs, std-msgs, tf2-ros, tinyxml2-vendor, vision-msgs, webots-ros2-importer, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-driver";
  version = "2022.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_driver/2022.1.0-2.tar.gz";
    name = "2022.1.0-2.tar.gz";
    sha256 = "d63a82662d9c52534c1a1941d283a8e07897450a91aa371b2daddcf7db664fe8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs pluginlib rclcpp rclpy sensor-msgs std-msgs tf2-ros tinyxml2-vendor vision-msgs webots-ros2-importer webots-ros2-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = ''Implementation of the Webots - ROS 2 interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
