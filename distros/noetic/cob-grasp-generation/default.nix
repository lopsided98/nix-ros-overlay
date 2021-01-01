
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-description, geometry-msgs, message-generation, message-runtime, moveit-msgs, python3Packages, robot-state-publisher, roslib, rospy, rviz, schunk-description, sensor-msgs, std-msgs, tf, tf2-ros, trajectory-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-grasp-generation";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_grasp_generation/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "c1370789133022dd8e6b44e11ce6f286ce08ebcdd92450304b720e5988219bb1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-description geometry-msgs message-runtime moveit-msgs python3Packages.scipy python3Packages.six robot-state-publisher roslib rospy rviz schunk-description sensor-msgs std-msgs tf tf2-ros trajectory-msgs visualization-msgs xacro ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Grasp generation for Care-O-bot based on OpenRAVE'';
    license = with lib.licenses; [ asl20 ];
  };
}
