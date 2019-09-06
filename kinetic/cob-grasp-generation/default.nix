
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, schunk-description, cob-description, actionlib, rospy, tf, geometry-msgs, pythonPackages, message-generation, rviz, message-runtime, robot-state-publisher, roslib, xacro, trajectory-msgs, catkin, tf2-ros, std-msgs, moveit-msgs, visualization-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-grasp-generation";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_grasp_generation/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "9bec75db188d073b1516659886f0c227255ca45e0e410d4f97fcd607b45bd66e";
  };

  buildType = "catkin";
  buildInputs = [ moveit-msgs message-generation actionlib-msgs ];
  propagatedBuildInputs = [ actionlib-msgs schunk-description pythonPackages.scipy cob-description actionlib rospy tf geometry-msgs rviz message-runtime robot-state-publisher roslib xacro trajectory-msgs tf2-ros std-msgs moveit-msgs visualization-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Grasp generation for Care-O-bot based on OpenRAVE'';
    license = with lib.licenses; [ asl20 ];
  };
}
