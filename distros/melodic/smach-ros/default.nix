
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, rospy, rostest, rostopic, smach, smach-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-smach-ros";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/melodic/smach_ros/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "04573f2454e319ed33b8d7e1038c13ddd7f2d85f88ed3a47c46e3f2e2c8f7c45";
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
