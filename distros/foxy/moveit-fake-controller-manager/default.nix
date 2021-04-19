
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-ros-planning, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-moveit-fake-controller-manager";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_fake_controller_manager/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "efa24081b3098a2ac423a880448fb3d7c8d2afd7b05ddcec5303d4cad884e430";
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
