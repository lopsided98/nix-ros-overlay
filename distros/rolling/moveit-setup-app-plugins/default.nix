
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-app-plugins";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/rolling/moveit_setup_app_plugins/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "da2ba5690ae954a0825e4abde76f29f3a606fe4bb2e2b1946f576aa38220ccb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-cpp moveit-ros-visualization moveit-setup-framework pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Various specialty plugins for MoveIt Setup Assistant'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
