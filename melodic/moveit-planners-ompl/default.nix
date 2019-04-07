
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-resources, rosconsole, pluginlib, catkin, ompl, tf2-ros, moveit-core, dynamic-reconfigure, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners-ompl";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners_ompl/1.0.1-0.tar.gz;
    sha256 = "ff42c067ffeea4f9430e365946b5a958bec447d2e0e5a4fee66eee6a306e51df";
  };

  buildInputs = [ moveit-ros-planning pluginlib rosconsole moveit-core dynamic-reconfigure roscpp ompl tf2-ros ];
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning pluginlib rosconsole moveit-core dynamic-reconfigure roscpp ompl tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt! interface to OMPL'';
    #license = lib.licenses.BSD;
  };
}
