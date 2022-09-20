
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-fake-controller-manager";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_fake_controller_manager/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "2dfc26b3ab77a1e71a2d88c56145b032a09f6f496d7bf591c0047b8eb4fd9ba5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
