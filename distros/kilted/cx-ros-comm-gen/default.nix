
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-plugin, cx-utils, pluginlib, python3, python3Packages, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-kilted-cx-ros-comm-gen";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_ros_comm_gen/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "036a5f77a082422741a15d30325f518dc7db469c13eafc13f0900354aaf1c13e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cx-plugin cx-utils pluginlib python3 python3Packages.jinja2 rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generate CLIPS bindings to use ROS messages, actions and services";
    license = with lib.licenses; [ asl20 ];
  };
}
