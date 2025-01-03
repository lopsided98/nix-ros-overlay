
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, ros, rosbag, rosconsole, roscpp, rosgraph, rosgraph-msgs, roslaunch, roslisp, rosmaster, rosmsg, rosnode, rosout, rosparam, rospy, rosservice, rostest, rostopic, roswtf, std-srvs, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-ros-comm";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/ros_comm/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "e9c6b90a4924e1add4d6939a941f5f8f4e5493c47893b91d2868ac08f8439327";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-filters ros rosbag rosconsole roscpp rosgraph rosgraph-msgs roslaunch roslisp rosmaster rosmsg rosnode rosout rosparam rospy rosservice rostest rostopic roswtf std-srvs topic-tools xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS communications-related packages, including core client libraries (roscpp, rospy) and graph introspection tools (rostopic, rosnode, rosservice, rosparam).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
