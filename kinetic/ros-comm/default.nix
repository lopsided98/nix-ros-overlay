
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, ros, rosout, rosservice, rosgraph-msgs, rosgraph, rospy, message-filters, roslaunch, std-srvs, rosmaster, roswtf, rosbag, rosmsg, catkin, xmlrpcpp, roscpp, rosnode, rosparam, roslisp, rostest, rostopic, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-ros-comm";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/ros_comm/1.12.14-0.tar.gz;
    sha256 = "13537fc2de9eb6eac922cc3b39feb5da8eec0bc752abe7036e66b3cf6c44dadf";
  };

  propagatedBuildInputs = [ std-srvs rosmaster rosconsole roswtf rosbag ros rosout rosservice rosmsg rosgraph-msgs rosgraph xmlrpcpp rospy roscpp rosnode rosparam message-filters roslisp rostest rostopic topic-tools roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS communications-related packages, including core client libraries (roscpp, rospy) and graph introspection tools (rostopic, rosnode, rosservice, rosparam).'';
    #license = lib.licenses.BSD;
  };
}
