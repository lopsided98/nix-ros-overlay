
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, std-srvs, rosconsole, cpp-common, boost, catkin, pythonPackages, topic-tools, roscpp, genpy, xmlrpcpp, rospy, roscpp-serialization, genmsg, roslib }:
buildRosPackage {
  pname = "ros-melodic-rosbag";
  version = "1.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosbag/1.14.3-0.tar.gz;
    sha256 = "37736a1ad7ddeaddb4f651b8a4d10da75654bdf3ff6a4623f85f467c9125405d";
  };

  propagatedBuildInputs = [ rosbag-storage std-srvs rosconsole boost pythonPackages.rospkg genpy roscpp pythonPackages.pycrypto pythonPackages.python-gnupg xmlrpcpp rospy topic-tools genmsg roslib ];
  nativeBuildInputs = [ rosbag-storage std-srvs rosconsole cpp-common boost catkin xmlrpcpp roscpp-serialization topic-tools pythonPackages.pillow roscpp ];

  meta = {
    description = ''This is a set of tools for recording from and playing back to ROS
    topics.  It is intended to be high performance and avoids
    deserialization and reserialization of the messages.'';
    #license = lib.licenses.BSD;
  };
}
