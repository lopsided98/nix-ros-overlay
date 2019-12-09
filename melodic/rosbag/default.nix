
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roscpp-serialization, genmsg, std-srvs, rosbag-storage, pythonPackages, catkin, roslib, cpp-common, genpy, rosconsole, roscpp, topic-tools, rospy, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-rosbag";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosbag/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "37736a1ad7ddeaddb4f651b8a4d10da75654bdf3ff6a4623f85f467c9125405d";
  };

  buildType = "catkin";
  buildInputs = [ boost roscpp-serialization std-srvs pythonPackages.pillow rosbag-storage cpp-common rosconsole roscpp topic-tools xmlrpcpp ];
  propagatedBuildInputs = [ boost xmlrpcpp genmsg std-srvs rosbag-storage pythonPackages.rospkg pythonPackages.pycrypto roslib pythonPackages.python-gnupg genpy roscpp topic-tools rospy rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back to ROS
    topics.  It is intended to be high performance and avoids
    deserialization and reserialization of the messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
