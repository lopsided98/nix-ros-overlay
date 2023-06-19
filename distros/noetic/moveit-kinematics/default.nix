
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, moveit-core, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-ros-planning, orocos-kdl, pluginlib, python3Packages, roscpp, rostest, tf2, tf2-kdl, urdfdom, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-moveit-kinematics";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_kinematics/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "c63d9b2d34fd0b4c5f432e1f03d3a8526676f145f663e3d565d3d045085e4c83";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-ros-planning rostest xmlrpcpp ];
  propagatedBuildInputs = [ eigen moveit-core orocos-kdl pluginlib python3Packages.lxml python3Packages.pyyaml roscpp tf2 tf2-kdl urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
