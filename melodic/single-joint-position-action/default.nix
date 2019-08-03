
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, catkin, roscpp, actionlib }:
buildRosPackage {
  pname = "ros-melodic-single-joint-position-action";
  version = "1.10.16-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/single_joint_position_action/1.10.16-1.tar.gz;
    sha256 = "54ae567edc0ffc8c8be49d337b28f44b3aeec65d5d91b60350b03bd5bb97a0c9";
  };

  buildInputs = [ pr2-controllers-msgs roscpp actionlib ];
  propagatedBuildInputs = [ pr2-controllers-msgs roscpp actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The single joint position action is a node that provides an action
  interface for commanding a trajectory to move a joint to a particular
  position. The action reports success when the joint reaches the desired
  position.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
