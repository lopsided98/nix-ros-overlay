
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-core-plugins";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_core_plugins/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "fa88e0a16f0c8acc4e158caa5781a3ab39853c17fcfd2537653a024f94543201";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-cpp moveit-ros-visualization moveit-setup-framework pluginlib rclcpp srdfdom urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Core (meta) plugins for MoveIt Setup Assistant'';
    license = with lib.licenses; [ bsd3 ];
  };
}
