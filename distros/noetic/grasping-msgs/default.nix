
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, message-generation, message-runtime, moveit-msgs, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-noetic-grasping-msgs";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/grasping_msgs-gbp/archive/release/noetic/grasping_msgs/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "87a1982676f3578bf4799db82e984990dec14eab6d9df3a98ab13b4d4a2d6c33";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs message-runtime moveit-msgs sensor-msgs shape-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for describing objects and how to grasp them.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
