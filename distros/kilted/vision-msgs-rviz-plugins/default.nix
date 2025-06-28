
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, pluginlib, python3Packages, rclcpp, rclpy, rviz-common, rviz-default-plugins, rviz-rendering, rviz2, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-vision-msgs-rviz-plugins";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/kilted/vision_msgs_rviz_plugins/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "6eb544e32591b81aef6c6fe0c5cfdc418ea5b80885562f4448c3c20751da9383";
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
