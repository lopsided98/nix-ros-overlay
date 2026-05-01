
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, moveit-configs-utils, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-moveit-setup-app-plugins";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_setup_app_plugins/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "64afc2a756002e8c49c88c72c1d759ab7d230c225bfa66f578423df09199f0a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp moveit-configs-utils moveit-ros-visualization moveit-setup-framework pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Various specialty plugins for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsd3 ];
  };
}
