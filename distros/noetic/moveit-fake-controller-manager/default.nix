
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-moveit-fake-controller-manager";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_fake_controller_manager/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "b29a0b1ca54579468939bdea148e174c213684801bce4f2b0d2709296ed3ff52";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A fake controller manager plugin for MoveIt.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
