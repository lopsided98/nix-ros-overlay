
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, moveit-configs-utils, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-moveit-setup-controllers";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_setup_controllers/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "98fd8958312fd70f01d8d4f2d410982c84f13426e6742cb8de11d716f9b29c8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest moveit-configs-utils moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ ament-index-cpp moveit-setup-framework pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "MoveIt Setup Steps for ROS 2 Control";
    license = with lib.licenses; [ bsd3 ];
  };
}
