
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-description, cob-manipulation-msgs, geometry-msgs, moveit-msgs, python3Packages, robot-state-publisher, roslib, rospy, rviz, schunk-description, sensor-msgs, std-msgs, tf, tf2-ros, trajectory-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-grasp-generation";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_grasp_generation/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "14a911ecf39f14856ac409a1e95933619929b7446e4f85233c8cec70b8e647d8";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-description cob-manipulation-msgs geometry-msgs moveit-msgs python3Packages.scipy python3Packages.six robot-state-publisher roslib rospy rviz schunk-description sensor-msgs std-msgs tf tf2-ros trajectory-msgs visualization-msgs xacro ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Grasp generation for Care-O-bot based on OpenRAVE";
    license = with lib.licenses; [ asl20 ];
  };
}
