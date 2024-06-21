
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, moveit-configs-utils, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-controllers";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_controllers/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "0c53107b4d51af2d58e0e516c5045768d240ab44a86a61cc2af480d5bc272adb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest moveit-configs-utils moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ ament-index-cpp moveit-setup-framework pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MoveIt Setup Steps for ROS 2 Control";
    license = with lib.licenses; [ bsd3 ];
  };
}
