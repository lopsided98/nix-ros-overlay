
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, moveit-configs-utils, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-moveit-setup-controllers";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_setup_controllers/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "3d5c4aa6b087190758ea70e8d68f3d835180f003db16ac85277ab9fafbcbc436";
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
