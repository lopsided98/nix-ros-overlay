
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, pluginlib, python3Packages, rclcpp, rclpy, rviz-common, rviz-default-plugins, rviz-rendering, rviz2, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-vision-msgs-rviz-plugins";
  version = "4.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/kilted/vision_msgs_rviz_plugins/4.1.1-3.tar.gz";
    name = "4.1.1-3.tar.gz";
    sha256 = "e7b1e06b90707c650fcb87d384be45f4f67653b94669b738f459f9985b92a0f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib python3Packages.numpy rclcpp rclpy rviz-common rviz-default-plugins rviz-rendering rviz2 vision-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "RVIZ2 plugins for visualizing vision_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
