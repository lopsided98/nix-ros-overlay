
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, pluginlib, python3Packages, rclcpp, rclpy, rviz-common, rviz-default-plugins, rviz-rendering, rviz2, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-vision-msgs-rviz-plugins";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/rolling/vision_msgs_rviz_plugins/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "a6b3a204164888b1ced72ff973ebf2aea4262dfe030e6b1e9c44cbc08080aa4c";
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
