
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, message-generation, message-runtime, moveit-msgs, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-kinetic-grasping-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/grasping_msgs-gbp/archive/release/kinetic/grasping_msgs/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "afc0af83897f468ecf723597704aaebb582ce330d818ff073b397051c328aa46";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs message-runtime moveit-msgs sensor-msgs shape-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for describing objects and how to grasp them.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
