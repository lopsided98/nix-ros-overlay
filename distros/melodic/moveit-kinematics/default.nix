
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, moveit-core, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-ros-planning, orocos-kdl, pluginlib, pythonPackages, roscpp, rostest, tf2, tf2-kdl, urdfdom, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-kinematics";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_kinematics/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "3720bf517ae0ea8d51065a9a5a59bebec0a1cafa658b7b3dd459ee3605a7bbe3";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-ros-planning rostest xmlrpcpp ];
  propagatedBuildInputs = [ eigen moveit-core orocos-kdl pluginlib pythonPackages.lxml roscpp tf2 tf2-kdl urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
