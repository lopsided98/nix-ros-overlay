
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, catkin, roscpp, actionlib }:
buildRosPackage {
  pname = "ros-lunar-single-joint-position-action";
  version = "1.10.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/single_joint_position_action/1.10.15-0.tar.gz;
    sha256 = "70e752719c9f0679052774e58b306a156628849cb4db95b48c2d4da5ed9cb57e";
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
