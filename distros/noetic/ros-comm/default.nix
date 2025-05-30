
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, ros, rosbag, rosconsole, roscpp, rosgraph, rosgraph-msgs, roslaunch, roslisp, rosmaster, rosmsg, rosnode, rosout, rosparam, rospy, rosservice, rostest, rostopic, roswtf, std-srvs, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-ros-comm";
  version = "1.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/ros_comm/1.17.4-1.tar.gz";
    name = "1.17.4-1.tar.gz";
    sha256 = "f7f4cc792fbc98dd066000f3272916566b34e5d534dcb61e249258b0067327bd";
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
