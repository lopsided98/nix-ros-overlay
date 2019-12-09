
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, actionlib, shape-msgs, catkin, moveit-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-grasping-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/grasping_msgs-gbp/archive/release/kinetic/grasping_msgs/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "afc0af83897f468ecf723597704aaebb582ce330d818ff073b397051c328aa46";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs actionlib shape-msgs moveit-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs actionlib shape-msgs moveit-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for describing objects and how to grasp them.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
