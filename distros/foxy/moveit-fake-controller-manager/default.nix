
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-core, moveit-ros-planning, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-moveit-fake-controller-manager";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_fake_controller_manager/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "050862b739034b35d9e7dee7fcee97b21fb4765ac0d597e67dbd1c85759fd3f3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
