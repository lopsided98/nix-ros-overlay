
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-fake-controller-manager";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_fake_controller_manager/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "4c60287aa3f6f31813f8871a824cff704aabebc273d85a8e734e720e714a6470";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
