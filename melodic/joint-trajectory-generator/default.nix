
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, orocos-kdl, joint-trajectory-action, catkin, urdf, actionlib, angles, roscpp }:
buildRosPackage {
  pname = "ros-melodic-joint-trajectory-generator";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/joint_trajectory_generator/0.0.11-0.tar.gz;
    sha256 = "273943f65776908254c198a36be8792716e78e5487d52e849be32aa66094695d";
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
