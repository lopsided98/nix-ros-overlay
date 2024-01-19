
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, joint-trajectory-action, orocos-kdl, pr2-controllers-msgs, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-joint-trajectory-generator";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/noetic/joint_trajectory_generator/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "d2287a1ee1b9672ccd3e597113761ac8ff41025f73a9b3cdffa992ec8a480bb7";
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
