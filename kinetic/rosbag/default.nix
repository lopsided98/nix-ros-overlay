
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, std-srvs, rosconsole, cpp-common, boost, catkin, pythonPackages, topic-tools, roscpp, genpy, xmlrpcpp, rospy, roscpp-serialization, genmsg, roslib }:
buildRosPackage {
  pname = "ros-kinetic-rosbag";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosbag/1.12.14-0.tar.gz;
    sha256 = "8a29f2e1350a2ecd29a8bb019dba67f4445bf60ec2c0c95436c345988600e354";
  };

  propagatedBuildInputs = [ rosbag-storage std-srvs rosconsole boost pythonPackages.rospkg genpy roscpp xmlrpcpp rospy topic-tools genmsg roslib ];
  nativeBuildInputs = [ rosbag-storage std-srvs rosconsole cpp-common boost catkin xmlrpcpp roscpp-serialization topic-tools pythonPackages.pillow roscpp ];

  meta = {
    description = ''This is a set of tools for recording from and playing back to ROS
    topics.  It is intended to be high performance and avoids
    deserialization and reserialization of the messages.'';
    #license = lib.licenses.BSD;
  };
}
