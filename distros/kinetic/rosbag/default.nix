
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, genmsg, genpy, pythonPackages, rosbag-storage, rosconsole, roscpp, roscpp-serialization, roslib, rospy, std-srvs, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-rosbag";
  version = "1.12.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosbag/1.12.14-0.tar.gz";
    name = "1.12.14-0.tar.gz";
    sha256 = "8a29f2e1350a2ecd29a8bb019dba67f4445bf60ec2c0c95436c345988600e354";
  };

  buildType = "catkin";
  buildInputs = [ cpp-common pythonPackages.pillow roscpp-serialization ];
  propagatedBuildInputs = [ boost genmsg genpy pythonPackages.rospkg rosbag-storage rosconsole roscpp roslib rospy std-srvs topic-tools xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a set of tools for recording from and playing back to ROS
    topics.  It is intended to be high performance and avoids
    deserialization and reserialization of the messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
