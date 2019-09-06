
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, rostest, rospy, genpy }:
buildRosPackage {
  pname = "ros-kinetic-rostopic";
  version = "1.12.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rostopic/1.12.14-0.tar.gz";
    name = "1.12.14-0.tar.gz";
    sha256 = "8642914defe3b2a987aa069cd25d683d02d1ae98fa1cc10da66faeca8852f57c";
  };

  buildType = "catkin";
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
