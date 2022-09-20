
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, message-generation, message-runtime, rosbash, rosconsole, roscpp, rostest, rostime, rosunit, std-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-topic-tools";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/topic_tools/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "4679a32027c15a54e496519128489c63c277342563387f96f260daefb655c07c";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common message-generation rostest rosunit ];
  checkInputs = [ rosbash ];
  propagatedBuildInputs = [ message-runtime rosconsole roscpp rostime std-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for directing, throttling, selecting, and otherwise messing with
    ROS topics at a meta level. None of the programs in this package actually
    know about the topics whose streams they are altering; instead, these
    tools deal with messages as generic binary blobs. This means they can be
    applied to any ROS topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
