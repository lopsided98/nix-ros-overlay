
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, std-srvs, rosconsole, cpp-common, boost, catkin, pythonPackages, topic-tools, roscpp, genpy, xmlrpcpp, roscpp-serialization, rospy, genmsg, roslib }:
buildRosPackage {
  pname = "ros-lunar-rosbag";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosbag/1.13.7-0.tar.gz;
    sha256 = "5fb28492e2acb4b0967a3bf188ad0327093ca05adc4e17f27e9adbf96f171a63";
  };

  buildInputs = [ rosbag-storage std-srvs rosconsole cpp-common boost xmlrpcpp roscpp-serialization topic-tools pythonPackages.pillow roscpp ];
  propagatedBuildInputs = [ rosbag-storage std-srvs rosconsole boost pythonPackages.rospkg genpy roslib xmlrpcpp rospy topic-tools genmsg roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back to ROS
    topics.  It is intended to be high performance and avoids
    deserialization and reserialization of the messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
