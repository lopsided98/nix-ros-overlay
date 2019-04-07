
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, kdl-parser, orocos-kdl, trajectory-msgs, sensor-msgs, catkin, message-filters, roscpp, actionlib, tf-conversions, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-head-action";
  version = "1.10.15-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_head_action/1.10.15-1.tar.gz;
    sha256 = "3aca3955c0c33d9a3fd315a5d0d55048bd56ab49005650c5ca995a01c5137d70";
  };

  buildInputs = [ pr2-controllers-msgs kdl-parser orocos-kdl trajectory-msgs sensor-msgs message-filters roscpp actionlib tf-conversions tf geometry-msgs ];
  propagatedBuildInputs = [ pr2-controllers-msgs kdl-parser orocos-kdl trajectory-msgs sensor-msgs message-filters roscpp actionlib tf-conversions tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The PR2 head action is a node that provides an action interface for
  pointing the head of the PR2.  It passes trajectory goals to the
  controller, and reports success when they have finished executing.'';
    #license = lib.licenses.BSD;
  };
}
