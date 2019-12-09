
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosgraph, ros, rostest, rosmsg, rostopic, rosparam, roswtf, rosbag, rosconsole, xmlrpcpp, message-filters, roslisp, rosmaster, std-srvs, catkin, roscpp, rosout, topic-tools, rospy, rosgraph-msgs, roslaunch, rosnode, rosservice }:
buildRosPackage {
  pname = "ros-melodic-ros-comm";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/ros_comm/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "e50bee6dd4635917c0599d4e97199ac10dbb1e1a8efbb541889076bf10473198";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosgraph ros rostest rosmsg rostopic rosparam roswtf rosbag xmlrpcpp rosconsole message-filters roslisp rosmaster std-srvs roscpp rosout topic-tools rospy roslaunch rosgraph-msgs rosnode rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS communications-related packages, including core client libraries (roscpp, rospy) and graph introspection tools (rostopic, rosnode, rosservice, rosparam).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
