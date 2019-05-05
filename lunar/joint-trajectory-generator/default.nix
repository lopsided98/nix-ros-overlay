
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, orocos-kdl, joint-trajectory-action, catkin, urdf, actionlib, angles, roscpp }:
buildRosPackage {
  pname = "ros-lunar-joint-trajectory-generator";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/lunar/joint_trajectory_generator/0.0.11-0.tar.gz;
    sha256 = "c7699f9c0421b848c4af9d0a21159b8599d52c01150c431d2bb42b4c9b15eec3";
  };

  buildInputs = [ pr2-controllers-msgs orocos-kdl joint-trajectory-action urdf actionlib angles roscpp ];
  propagatedBuildInputs = [ pr2-controllers-msgs orocos-kdl joint-trajectory-action urdf actionlib angles roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''joint_trajectory_generator action takes in a trajectory specified
    by a number of joint positions, and it generates a new smooth trajectory
    through these joint positions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
