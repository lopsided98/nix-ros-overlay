
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-fake-controller-manager";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_fake_controller_manager/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "b3172004c3b4d13351c39d53f88725f16a466e78357d2ab3be2aa4772d77ca88";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
