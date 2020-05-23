
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, genmsg, genpy, pythonPackages, rosbag-storage, rosconsole, roscpp, roscpp-serialization, roslib, rospy, std-srvs, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-rosbag";
  version = "1.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosbag/1.15.6-1.tar.gz";
    name = "1.15.6-1.tar.gz";
    sha256 = "0c26833cc470ad39df6911c661a6a1300cd3c40ea689a8805985e26a90c32509";
  };

  buildType = "catkin";
  buildInputs = [ cpp-common pythonPackages.pillow roscpp-serialization ];
  propagatedBuildInputs = [ boost genmsg genpy pythonPackages.pycryptodomex pythonPackages.python-gnupg pythonPackages.rospkg rosbag-storage rosconsole roscpp roslib rospy std-srvs topic-tools xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back to ROS
    topics.  It is intended to be high performance and avoids
    deserialization and reserialization of the messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
