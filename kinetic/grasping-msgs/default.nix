
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, sensor-msgs, catkin, message-generation, message-runtime, actionlib, moveit-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-grasping-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/mikeferguson/grasping_msgs-gbp/archive/release/kinetic/grasping_msgs/0.3.1-0.tar.gz;
    sha256 = "afc0af83897f468ecf723597704aaebb582ce330d818ff073b397051c328aa46";
  };

  buildInputs = [ shape-msgs message-generation actionlib moveit-msgs sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs message-runtime actionlib moveit-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for describing objects and how to grasp them.'';
    #license = lib.licenses.BSD;
  };
}
