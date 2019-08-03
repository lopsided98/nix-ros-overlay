
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, kdl-parser, orocos-kdl, trajectory-msgs, sensor-msgs, catkin, message-filters, roscpp, actionlib, tf-conversions, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-head-action";
  version = "1.10.16-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_head_action/1.10.16-1.tar.gz;
    sha256 = "4d5a440c7e8d0c59ac14434c0a077cf85552389b71c261d5c1698ebc4752bcda";
  };

  buildInputs = [ pr2-controllers-msgs kdl-parser orocos-kdl trajectory-msgs sensor-msgs message-filters roscpp actionlib tf-conversions tf geometry-msgs ];
  propagatedBuildInputs = [ pr2-controllers-msgs kdl-parser orocos-kdl trajectory-msgs sensor-msgs message-filters roscpp actionlib tf-conversions tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The PR2 head action is a node that provides an action interface for
  pointing the head of the PR2.  It passes trajectory goals to the
  controller, and reports success when they have finished executing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
