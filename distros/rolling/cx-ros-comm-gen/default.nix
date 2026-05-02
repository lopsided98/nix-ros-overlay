
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, cx-plugin, cx-utils, pluginlib, python3, python3Packages, rclcpp, rclcpp-action, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-rolling-cx-ros-comm-gen";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_ros_comm_gen/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "d4a7ae67714b924b1bb41d7faa619d73557a8c39070381f008af21083a48f0ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-python cx-plugin cx-utils pluginlib python3 python3Packages.jinja2 rclcpp rclcpp-action rosidl-runtime-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generate CLIPS bindings to use ROS messages, actions and services";
    license = with lib.licenses; [ asl20 ];
  };
}
