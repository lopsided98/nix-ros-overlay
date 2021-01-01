
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosbag, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-rostopic";
  version = "1.12.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rostopic/1.12.17-1.tar.gz";
    name = "1.12.17-1.tar.gz";
    sha256 = "d476ccbc28d1276969c34af68b09ac65dcabf82ae8e81b798f6ea0ed90df27e9";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ genpy rosbag rospy ];
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
