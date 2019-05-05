
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, sensor-msgs, catkin, message-generation, message-runtime, actionlib, moveit-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-grasping-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/mikeferguson/grasping_msgs-gbp/archive/release/lunar/grasping_msgs/0.3.1-0.tar.gz;
    sha256 = "e018c39c6a14e6693d175117d2f227335c1f927df684c23cbf7e5fa78b8cc7a4";
  };

  buildInputs = [ shape-msgs sensor-msgs message-generation actionlib moveit-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs sensor-msgs message-runtime actionlib moveit-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for describing objects and how to grasp them.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
