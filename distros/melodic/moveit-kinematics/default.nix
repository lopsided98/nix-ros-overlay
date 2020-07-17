
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, moveit-core, moveit-resources, moveit-ros-planning, orocos-kdl, pluginlib, pythonPackages, roscpp, rostest, tf2, tf2-kdl, urdfdom, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-kinematics";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_kinematics/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "ef091efe076e61dc40cd7cc66b2fb2bbe9f9797cc7b66a578a386ec823d94d5e";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources moveit-ros-planning rostest xmlrpcpp ];
  propagatedBuildInputs = [ eigen moveit-core orocos-kdl pluginlib pythonPackages.lxml roscpp tf2 tf2-kdl urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
