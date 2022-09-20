
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, rospy, rostest, rostopic, smach, smach-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-smach-ros";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/melodic/smach_ros/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "2a6062c9bb60b5cea300784b67e7c977b1cd42bc7117c0d5bea7122eb04d37ed";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs rospy rostopic smach smach-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The smach_ros package contains extensions for the SMACH library to
    integrate it tightly with ROS.  For example, SMACH-ROS can call
    ROS services, listen to ROS topics, and integrate
    with <a href="http://www.ros.org/wiki/actionlib">actionlib</a>
    both as a client, and a provider of action servers.  SMACH is a
    new library that takes advantage of very old concepts in order to
    quickly create robust robot behavior with maintainable and modular
    code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
