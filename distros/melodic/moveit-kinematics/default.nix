
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, moveit-core, moveit-resources, moveit-ros-planning, orocos-kdl, pluginlib, pythonPackages, roscpp, rostest, tf2, tf2-kdl, urdfdom, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-kinematics";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_kinematics/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "cd987af131360fdc327814593634712222a737c98fc86962ce68e9e44d8636d8";
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
