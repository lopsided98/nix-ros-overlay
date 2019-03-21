
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, schunk-description, cob-description, rospy, actionlib, tf, geometry-msgs, pythonPackages, message-generation, rviz, message-runtime, robot-state-publisher, roslib, xacro, trajectory-msgs, catkin, tf2-ros, std-msgs, moveit-msgs, visualization-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-grasp-generation";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_grasp_generation/0.7.1-0.tar.gz;
    sha256 = "d39fe63293a12bc0f58e3290a5f316eb0cf563f4ca508d015bb021cb0139d685";
  };

  propagatedBuildInputs = [ actionlib-msgs trajectory-msgs schunk-description pythonPackages.scipy tf2-ros cob-description actionlib std-msgs rospy moveit-msgs tf visualization-msgs geometry-msgs sensor-msgs rviz message-runtime robot-state-publisher roslib xacro ];
  nativeBuildInputs = [ moveit-msgs catkin message-generation actionlib-msgs ];

  meta = {
    description = ''Grasp generation for Care-O-bot based on OpenRAVE'';
    #license = lib.licenses.Apache 2.0;
  };
}
