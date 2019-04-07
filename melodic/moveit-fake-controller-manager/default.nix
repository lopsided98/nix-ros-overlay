
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-fake-controller-manager";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_fake_controller_manager/1.0.1-0.tar.gz;
    sha256 = "feaa120207501e6224b2ce7340cadecc2bd54533ab516ffea3423d635a58a612";
  };

  buildInputs = [ pluginlib roscpp moveit-core moveit-ros-planning ];
  propagatedBuildInputs = [ pluginlib roscpp moveit-core moveit-ros-planning ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    #license = lib.licenses.BSD;
  };
}
