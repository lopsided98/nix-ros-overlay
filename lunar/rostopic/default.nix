
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, rostest, rospy, genpy }:
buildRosPackage {
  pname = "ros-lunar-rostopic";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rostopic/1.13.7-0.tar.gz;
    sha256 = "4f11b47c9546b2cb076302e5f2200a09b30e0253553a1d10b2eb2b085109a789";
  };

  buildInputs = [ rostest ];
  propagatedBuildInputs = [ rosbag genpy rospy ];
  nativeBuildInputs = [ catkin ];

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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
