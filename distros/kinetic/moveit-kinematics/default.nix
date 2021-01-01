
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, moveit-core, moveit-ros-planning, pluginlib, roscpp, srdfdom, tf, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-kinematics";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_kinematics/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "3abee7c37070e9e3517e20e6a9e21a61139ca51a2969cafdaed657217b1a565e";
  };

  buildType = "catkin";
  buildInputs = [ eigen srdfdom tf tf-conversions urdf ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
