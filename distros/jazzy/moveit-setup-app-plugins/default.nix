
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, moveit-configs-utils, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-moveit-setup-app-plugins";
  version = "2.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_setup_app_plugins/2.12.4-1.tar.gz";
    name = "2.12.4-1.tar.gz";
    sha256 = "a3235106b47f7f6c73350ef31b80ae0464972f87587c3180978eca8e05c8e00d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp moveit-configs-utils moveit-ros-visualization moveit-setup-framework pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Various specialty plugins for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsd3 ];
  };
}
