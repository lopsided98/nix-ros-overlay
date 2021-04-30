
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-ros-planning, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-moveit-fake-controller-manager";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_fake_controller_manager/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "2cb09e897652224670653411411e86186082e6d5f325584b1e441b74c7ce6487";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
