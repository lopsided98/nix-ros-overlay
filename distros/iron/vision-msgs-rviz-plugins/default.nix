
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, pluginlib, python3Packages, rclcpp, rclpy, rviz-common, rviz-default-plugins, rviz-rendering, rviz2, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-vision-msgs-rviz-plugins";
  version = "4.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/iron/vision_msgs_rviz_plugins/4.1.1-1.tar.gz";
    name = "4.1.1-1.tar.gz";
    sha256 = "3eed3b4a19ea09fbe4a0e6b57f6ae1998571f2789a7b42c2b5e158bbe8f0abc2";
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
