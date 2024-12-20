
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, moveit-configs-utils, moveit-resources-panda-moveit-config, moveit-setup-app-plugins, moveit-setup-controllers, moveit-setup-core-plugins, moveit-setup-framework, moveit-setup-srdf-plugins, pluginlib, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-assistant";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_assistant/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "5e62ded452bc82cad9a97918bb3814e5a662259537f0e8dec1d6cf1aabc54237";
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
