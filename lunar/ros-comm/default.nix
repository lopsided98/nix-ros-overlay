
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, ros, rosout, rosservice, rosgraph-msgs, rosgraph, rospy, message-filters, roslaunch, std-srvs, rosmaster, roswtf, rosbag, rosmsg, catkin, xmlrpcpp, roscpp, rosnode, rosparam, roslisp, rostest, rostopic, topic-tools }:
buildRosPackage {
  pname = "ros-lunar-ros-comm";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/ros_comm/1.13.7-0.tar.gz;
    sha256 = "f4e794222b894be5ad635a0067d2c95d0bbd1174e373562ab5d0c7691611333f";
  };

  propagatedBuildInputs = [ rosconsole ros rosout rosservice rosgraph-msgs rosgraph rospy message-filters roslaunch std-srvs rosmaster roswtf rosbag rosmsg xmlrpcpp roscpp rosnode rosparam roslisp rostest rostopic topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS communications-related packages, including core client libraries (roscpp, rospy) and graph introspection tools (rostopic, rosnode, rosservice, rosparam).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
