
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, orocos-kdl, joint-trajectory-action, catkin, urdf, actionlib, angles, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-joint-trajectory-generator";
  version = "0.0.10";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/joint_trajectory_generator/0.0.10-0.tar.gz;
    sha256 = "08363415beca901446bb7439e017cf2802a5f16c27114df4ac3bfe6e2b488481";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs urdf orocos-kdl actionlib joint-trajectory-action angles roscpp ];
  nativeBuildInputs = [ pr2-controllers-msgs urdf orocos-kdl actionlib joint-trajectory-action angles catkin roscpp ];

  meta = {
    description = ''joint_trajectory_generator action takes in a trajectory specified
    by a number of joint positions, and it generates a new smooth trajectory
    through these joint positions.'';
    #license = lib.licenses.BSD;
  };
}
