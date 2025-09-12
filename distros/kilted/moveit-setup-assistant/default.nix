
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, moveit-configs-utils, moveit-resources-panda-moveit-config, moveit-setup-app-plugins, moveit-setup-controllers, moveit-setup-core-plugins, moveit-setup-framework, moveit-setup-srdf-plugins, pluginlib, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-moveit-setup-assistant";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_setup_assistant/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "f0a53535e17f426913545ac2f20ca35bf90286dbda0ce1b763cc92f8472b3b33";
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
