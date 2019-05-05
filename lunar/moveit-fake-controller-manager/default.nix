
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-lunar-moveit-fake-controller-manager";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_fake_controller_manager/0.9.12-1.tar.gz;
    sha256 = "ea66e85aa3cb3c340939eb95fc0c9d0b4de38bad549c82fef0a71e1b1feec156";
  };

  buildInputs = [ pluginlib roscpp moveit-core moveit-ros-planning ];
  propagatedBuildInputs = [ pluginlib roscpp moveit-core moveit-ros-planning ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
