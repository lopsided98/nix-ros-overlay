
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, catkin, roscpp, actionlib }:
buildRosPackage {
  pname = "ros-melodic-single-joint-position-action";
  version = "1.10.15-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/single_joint_position_action/1.10.15-1.tar.gz;
    sha256 = "52bd7e24d99be30953d7cf5ae23d1cd007b0863b86aa4dab5b3dcb741cca41a8";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs roscpp actionlib ];
  nativeBuildInputs = [ pr2-controllers-msgs catkin roscpp actionlib ];

  meta = {
    description = ''The single joint position action is a node that provides an action
  interface for commanding a trajectory to move a joint to a particular
  position. The action reports success when the joint reaches the desired
  position.'';
    #license = lib.licenses.BSD;
  };
}
