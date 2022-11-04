
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, joint-trajectory-action, orocos-kdl, pr2-controllers-msgs, roscpp, urdf }:
buildRosPackage {
  pname = "ros-melodic-joint-trajectory-generator";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/joint_trajectory_generator/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "273943f65776908254c198a36be8792716e78e5487d52e849be32aa66094695d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib angles joint-trajectory-action orocos-kdl pr2-controllers-msgs roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''joint_trajectory_generator action takes in a trajectory specified
    by a number of joint positions, and it generates a new smooth trajectory
    through these joint positions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
