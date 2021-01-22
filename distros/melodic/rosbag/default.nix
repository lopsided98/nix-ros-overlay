
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, genmsg, genpy, pythonPackages, rosbag-storage, rosconsole, roscpp, roscpp-serialization, roslib, rospy, std-srvs, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-rosbag";
  version = "1.14.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosbag/1.14.10-1.tar.gz";
    name = "1.14.10-1.tar.gz";
    sha256 = "cf787728793a54adddb8cc479d8ae31d9e3e952fea6b7950a3f3b487991d1929";
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
