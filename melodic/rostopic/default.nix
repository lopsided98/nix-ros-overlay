
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, rostest, rospy, genpy }:
buildRosPackage {
  pname = "ros-melodic-rostopic";
  version = "1.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rostopic/1.14.3-0.tar.gz;
    sha256 = "0327ddd98b2b5aea960318ee4548726994d033f110d1016e53399a74ec6043de";
  };

  propagatedBuildInputs = [ rosbag genpy rospy ];
  nativeBuildInputs = [ rostest catkin ];

  meta = {
    description = ''rostopic contains the rostopic command-line tool for displaying
    debug information about
    ROS <a href="http://www.ros.org/wiki/Topics">Topics</a>, including
    publishers, subscribers, publishing rate,
    and ROS <a href="http://www.ros.org/wiki/Messages">Messages</a>. It also
    contains an experimental Python library for getting information about
    and interacting with topics dynamically. This library is for
    internal-use only as the code API may change, though it does provide
    examples of how to implement dynamic subscription and publication
    behaviors in ROS.'';
    #license = lib.licenses.BSD;
  };
}
