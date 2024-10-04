
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, moveit-configs-utils, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-app-plugins";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_app_plugins/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "386a1b9ab0e586846182edd700f909fff0724adc93cb4ca097a81d3aa37b59a0";
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
