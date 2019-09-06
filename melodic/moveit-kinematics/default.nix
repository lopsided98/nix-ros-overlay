
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-resources, pluginlib, orocos-kdl, catkin, tf2-kdl, pythonPackages, urdfdom, tf2, rostest, moveit-core, xmlrpcpp, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-kinematics";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_kinematics/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "5b691b09f0e6b7560ab0971ee94fb84a351142b5619dab071b3c1924a6766c13";
  };

  buildType = "catkin";
  buildInputs = [ orocos-kdl pluginlib tf2-kdl tf2 moveit-core eigen roscpp ];
  checkInputs = [ moveit-resources rostest moveit-ros-planning xmlrpcpp ];
  propagatedBuildInputs = [ orocos-kdl pluginlib tf2-kdl urdfdom tf2 moveit-core pythonPackages.lxml eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
