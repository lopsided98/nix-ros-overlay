
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosbag, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-rostopic";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rostopic/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "f4bb6e4caf58ea8a7e0fdf7d6519ca3255b78200ef1a1bb62a7b28c1832c3825";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ genpy rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rostopic contains the rostopic command-line tool for displaying
    debug information about
    ROS <a href="http://wiki.ros.org/Topics">Topics</a>, including
    publishers, subscribers, publishing rate,
    and ROS <a href="http://wiki.ros.org/Messages">Messages</a>. It also
    contains an experimental Python library for getting information about
    and interacting with topics dynamically. This library is for
    internal-use only as the code API may change, though it does provide
    examples of how to implement dynamic subscription and publication
    behaviors in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
