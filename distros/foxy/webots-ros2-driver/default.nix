
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, geometry-msgs, pluginlib, python-cmake-module, rclcpp, rclpy, sensor-msgs, std-msgs, tf2-ros, tinyxml2-vendor, vision-msgs, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-driver";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2_driver/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "fbbfcef080a0b42f423d7f52ab5447f05c3fdf0654d697ceb7caf0ff68f55110";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs pluginlib rclcpp rclpy sensor-msgs std-msgs tf2-ros tinyxml2-vendor vision-msgs webots-ros2-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = ''Implementation of the Webots - ROS 2 interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
