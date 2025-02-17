
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, moveit-configs-utils, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-moveit-setup-app-plugins";
  version = "2.5.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_setup_app_plugins/2.5.8-1.tar.gz";
    name = "2.5.8-1.tar.gz";
    sha256 = "d20b55205ee69ac1a3d39d94cc3a59a1811ae7ff69e782848b10c653a592826a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-cpp moveit-configs-utils moveit-ros-visualization moveit-setup-framework pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Various specialty plugins for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
