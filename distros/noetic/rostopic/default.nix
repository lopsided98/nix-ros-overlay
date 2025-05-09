
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosbag, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-rostopic";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rostopic/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "ca182c1dea9da8a175f2d311a1734d144a153594cf0680f9b9d8991e5a92bef5";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ genpy rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rostopic contains the rostopic command-line tool for displaying
    debug information about
    ROS <a href=\"http://wiki.ros.org/Topics\">Topics</a>, including
    publishers, subscribers, publishing rate,
    and ROS <a href=\"http://wiki.ros.org/Messages\">Messages</a>. It also
    contains an experimental Python library for getting information about
    and interacting with topics dynamically. This library is for
    internal-use only as the code API may change, though it does provide
    examples of how to implement dynamic subscription and publication
    behaviors in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
