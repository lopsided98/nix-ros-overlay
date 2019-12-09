
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, geometry-msgs, tf, actionlib-msgs, sensor-msgs, robot-state-publisher, roslib, tf2-ros, std-msgs, catkin, pythonPackages, rospy, message-generation, trajectory-msgs, schunk-description, actionlib, rviz, moveit-msgs, visualization-msgs, cob-description, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-cob-grasp-generation";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_grasp_generation/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "0072636759ea9bd0a53f737743569b49dcaf47df3440cee6f9a1580d50013baa";
  };

  buildType = "catkin";
  buildInputs = [ message-generation actionlib-msgs moveit-msgs ];
  propagatedBuildInputs = [ xacro geometry-msgs tf actionlib-msgs sensor-msgs robot-state-publisher roslib tf2-ros std-msgs rospy trajectory-msgs schunk-description pythonPackages.scipy actionlib rviz moveit-msgs visualization-msgs cob-description message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Grasp generation for Care-O-bot based on OpenRAVE'';
    license = with lib.licenses; [ asl20 ];
  };
}
