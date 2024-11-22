
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-humble-moveit-setup-core-plugins";
  version = "2.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_setup_core_plugins/2.5.6-1.tar.gz";
    name = "2.5.6-1.tar.gz";
    sha256 = "82d6cc6ba8612a1a3442b6361cb2eac8d53417c4020ff263114efcd7c9696c7f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-cpp moveit-ros-visualization moveit-setup-framework pluginlib rclcpp srdfdom urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core (meta) plugins for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
