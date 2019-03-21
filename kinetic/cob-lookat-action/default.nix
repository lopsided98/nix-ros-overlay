
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-conversions, kdl-parser, orocos-kdl, control-msgs, actionlib-msgs, tf, trajectory-msgs, boost, catkin, message-generation, actionlib, message-runtime, rospy, tf-conversions, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-lookat-action";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_lookat_action/0.7.1-0.tar.gz;
    sha256 = "d2873d9ef519863fb789bb6a42793573e4c00fee14743bfb191f1c3d10046dc5";
  };

  propagatedBuildInputs = [ kdl-conversions kdl-parser boost actionlib-msgs orocos-kdl control-msgs trajectory-msgs roscpp rospy message-runtime actionlib tf-conversions tf geometry-msgs ];
  nativeBuildInputs = [ kdl-conversions kdl-parser boost actionlib-msgs orocos-kdl control-msgs trajectory-msgs catkin roscpp message-generation actionlib tf-conversions tf geometry-msgs ];

  meta = {
    description = ''cob_lookat_action'';
    #license = lib.licenses.Apache 2.0;
  };
}
