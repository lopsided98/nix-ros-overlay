
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, tf, catkin, std-msgs, actionlib, rospy, topic-tools, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-teleop";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_teleop/0.6.0-0.tar.gz;
    sha256 = "d02cac609671d94ffff3e7cfcca15233bdd780bc649939e6012eb44b4c367588";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs actionlib std-msgs geometry-msgs tf topic-tools roscpp rospy ];
  nativeBuildInputs = [ pr2-controllers-msgs topic-tools catkin roscpp rospy actionlib std-msgs tf geometry-msgs ];

  meta = {
    description = ''The pr2_teleop package'';
    #license = lib.licenses.TODO;
  };
}
