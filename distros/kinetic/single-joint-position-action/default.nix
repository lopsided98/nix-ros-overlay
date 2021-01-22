
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pr2-controllers-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-single-joint-position-action";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/single_joint_position_action/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "144af5b4aca93515cfbc20599bd296efd77b8b984e433ef943467d1ada7bb250";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib pr2-controllers-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The single joint position action is a node that provides an action
  interface for commanding a trajectory to move a joint to a particular
  position. The action reports success when the joint reaches the desired
  position.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
