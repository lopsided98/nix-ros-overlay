
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, pluginlib, python-cmake-module, rclcpp, rclcpp-lifecycle, rclpy, sensor-msgs, std-msgs, tf2-ros, tinyxml2-vendor, vision-msgs, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-driver";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_driver/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "4c4fb4a35a13314a6c34e4a3feac1abce02e525a7111ec3e8e19a37d404f6fc3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib rclcpp rclcpp-lifecycle rclpy sensor-msgs std-msgs tf2-ros tinyxml2-vendor vision-msgs webots-ros2-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = ''Implementation of the Webots - ROS 2 interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
