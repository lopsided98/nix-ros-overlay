
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, moveit-core, rostest, pluginlib, pythonPackages, urdfdom, moveit-ros-planning, moveit-resources, catkin, roscpp, eigen, tf2, tf2-kdl, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-kinematics";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_kinematics/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "5b691b09f0e6b7560ab0971ee94fb84a351142b5619dab071b3c1924a6766c13";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core orocos-kdl pluginlib tf2 eigen roscpp tf2-kdl ];
  checkInputs = [ xmlrpcpp rostest moveit-resources moveit-ros-planning ];
  propagatedBuildInputs = [ moveit-core orocos-kdl pythonPackages.lxml pluginlib urdfdom roscpp eigen tf2 tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
