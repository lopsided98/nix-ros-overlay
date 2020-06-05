
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, moveit-core, moveit-resources, moveit-ros-planning, orocos-kdl, pluginlib, pythonPackages, roscpp, rostest, tf2, tf2-kdl, urdfdom, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-kinematics";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_kinematics/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "f198d6a837c63f94ad7bb0ee0d490bd8fc2abce1e70d044ae8ee1cf2f4b21a68";
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
