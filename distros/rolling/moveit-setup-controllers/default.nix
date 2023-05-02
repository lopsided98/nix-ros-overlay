
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, moveit-configs-utils, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-controllers";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_controllers/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "7445e2f225d088c99f7307b103d0693a58a8b6f4490009322b3e64eaf71b63d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto moveit-configs-utils moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ ament-index-cpp moveit-setup-framework pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''MoveIt Setup Steps for ROS 2 Control'';
    license = with lib.licenses; [ bsd3 ];
  };
}
