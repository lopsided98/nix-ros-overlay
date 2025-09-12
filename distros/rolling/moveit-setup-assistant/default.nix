
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, moveit-configs-utils, moveit-resources-panda-moveit-config, moveit-setup-app-plugins, moveit-setup-controllers, moveit-setup-core-plugins, moveit-setup-framework, moveit-setup-srdf-plugins, pluginlib, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-assistant";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_assistant/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "18cae99229949cd62b3ae33fbe35effb4ff682418a24de06f5f396d1cc1b7181";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ ament-index-cpp moveit-configs-utils moveit-setup-app-plugins moveit-setup-controllers moveit-setup-core-plugins moveit-setup-framework moveit-setup-srdf-plugins pluginlib qt5.qtbase rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generates a configuration package that makes it easy to use MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
