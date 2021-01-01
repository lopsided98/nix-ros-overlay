
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-description, geometry-msgs, message-generation, message-runtime, moveit-msgs, pythonPackages, robot-state-publisher, roslib, rospy, rviz, schunk-description, sensor-msgs, std-msgs, tf, tf2-ros, trajectory-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-grasp-generation";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_grasp_generation/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "189bae9bcb4c99676f489679d07f70263ba33fdf3edecf565ce44dc492830e51";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-description geometry-msgs message-runtime moveit-msgs pythonPackages.scipy pythonPackages.six robot-state-publisher roslib rospy rviz schunk-description sensor-msgs std-msgs tf tf2-ros trajectory-msgs visualization-msgs xacro ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Grasp generation for Care-O-bot based on OpenRAVE'';
    license = with lib.licenses; [ asl20 ];
  };
}
