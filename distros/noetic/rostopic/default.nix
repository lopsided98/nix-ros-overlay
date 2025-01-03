
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosbag, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-rostopic";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rostopic/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "fabe657a7887d37299249f71fdf284703bbc047ce0d2f79a9cb410c76efcae27";
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
