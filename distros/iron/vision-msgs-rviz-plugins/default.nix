
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, pluginlib, python3Packages, rclcpp, rclpy, rviz-common, rviz-default-plugins, rviz-rendering, rviz2, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-vision-msgs-rviz-plugins";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/iron/vision_msgs_rviz_plugins/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "3dc5e4e61ba4a5763e08b2675ccce9b1449a212e8ee9ec96755bf626105a7590";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib python3Packages.numpy rclcpp rclpy rviz-common rviz-default-plugins rviz-rendering rviz2 vision-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''RVIZ2 plugins for visualizing vision_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
