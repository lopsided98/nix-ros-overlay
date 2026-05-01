
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, cx-plugin, cx-utils, pluginlib, python3, python3Packages, rclcpp, rclcpp-action, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-lyrical-cx-ros-comm-gen";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_ros_comm_gen/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "7466e8f50ec9eae302d5a2215759ed14b31c32f50ace94f965e12e39f1e096e1";
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
