
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-resources, pluginlib, orocos-kdl, catkin, tf2-kdl, pythonPackages, tf2, rostest, moveit-core, xmlrpcpp, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-kinematics";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_kinematics/1.0.1-0.tar.gz;
    sha256 = "985cac460cfb1e2a2c9d0c9715fd3f8fc03a5275ef0d7056cd79e5b6048cc3a3";
  };

  buildInputs = [ moveit-ros-planning tf2 moveit-core orocos-kdl pluginlib roscpp tf2-kdl eigen ];
  checkInputs = [ moveit-resources rostest xmlrpcpp ];
  propagatedBuildInputs = [ moveit-ros-planning orocos-kdl pluginlib tf2-kdl tf2 moveit-core pythonPackages.lxml eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt!'';
    #license = lib.licenses.BSD;
  };
}
