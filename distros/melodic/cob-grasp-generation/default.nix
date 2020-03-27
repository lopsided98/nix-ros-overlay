
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-description, geometry-msgs, message-generation, message-runtime, moveit-msgs, pythonPackages, robot-state-publisher, roslib, rospy, rviz, schunk-description, sensor-msgs, std-msgs, tf, tf2-ros, trajectory-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-cob-grasp-generation";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_grasp_generation/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "a1458ce47ba4511a9cb3365600e311cd2d34e0c8a73913dcc722d91ac1b60de5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-description geometry-msgs message-runtime moveit-msgs pythonPackages.scipy pythonPackages.six robot-state-publisher roslib rospy rviz schunk-description sensor-msgs std-msgs tf tf2-ros trajectory-msgs visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Grasp generation for Care-O-bot based on OpenRAVE'';
    license = with lib.licenses; [ asl20 ];
  };
}
