
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, control-msgs, moveit-common, moveit-core, pluginlib, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-galactic-moveit-simple-controller-manager";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_simple_controller_manager/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "ed0db51aa019367bb5d7b9b359806f5dd25ca62434208aab0becdb3b9f35cf73";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ control-msgs moveit-core pluginlib rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
