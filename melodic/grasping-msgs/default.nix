
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, sensor-msgs, catkin, message-generation, message-runtime, actionlib, moveit-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-grasping-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/grasping_msgs-gbp/archive/release/melodic/grasping_msgs/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "1deeb71cb90294e0027a324105670add8ffd4dabbcd454cc4d2b9508f4fe89af";
  };

  buildType = "catkin";
  buildInputs = [ shape-msgs sensor-msgs message-generation actionlib moveit-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs sensor-msgs message-runtime actionlib moveit-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for describing objects and how to grasp them.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
