
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, cx-plugin, cx-utils, pluginlib, python3, python3Packages, rclcpp, rclcpp-action, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-jazzy-cx-ros-comm-gen";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_ros_comm_gen/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "a4da48c08d07b0c5932fbd99dfa098d95e7dab3eb6dff02de82059985294371e";
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
