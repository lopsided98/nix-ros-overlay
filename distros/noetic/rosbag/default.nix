
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, genmsg, genpy, python3Packages, rosbag-storage, rosconsole, roscpp, roscpp-serialization, roslib, rospy, std-srvs, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-rosbag";
  version = "1.15.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosbag/1.15.13-1.tar.gz";
    name = "1.15.13-1.tar.gz";
    sha256 = "c72a586f8eef3c1297f9bf1951a8a9d43082c404ceeba8939ff4dff68b23779d";
  };

  buildType = "catkin";
  buildInputs = [ cpp-common python3Packages.pillow roscpp-serialization ];
  propagatedBuildInputs = [ boost genmsg genpy python3Packages.pycryptodomex python3Packages.python-gnupg python3Packages.rospkg rosbag-storage rosconsole roscpp roslib rospy std-srvs topic-tools xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back to ROS
    topics.  It is intended to be high performance and avoids
    deserialization and reserialization of the messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
