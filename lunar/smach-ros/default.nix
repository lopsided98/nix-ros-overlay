
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, actionlib-msgs, catkin, rostest, smach-msgs, actionlib, rostopic, rospy, std-msgs, smach }:
buildRosPackage {
  pname = "ros-lunar-smach-ros";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/executive_smach-release/archive/release/lunar/smach_ros/2.0.1-0.tar.gz;
    sha256 = "7725cb005e7f08520fd64bbe78d441192bb1b7980ae85a7fa54dcd42f594f038";
  };

  buildInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs smach-msgs rostopic actionlib-msgs actionlib std-msgs smach rospy ];
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
    #license = lib.licenses.BSD;
  };
}
