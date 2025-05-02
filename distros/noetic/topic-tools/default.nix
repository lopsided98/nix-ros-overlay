
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, message-generation, message-runtime, rosbash, rosconsole, roscpp, rostest, rostime, rosunit, std-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-topic-tools";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/topic_tools/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "998ef1356d5296051d7f1d3674b1fde41deca5b61be91d8669c96d06d4c1e264";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common message-generation rostest rosunit ];
  checkInputs = [ rosbash ];
  propagatedBuildInputs = [ message-runtime rosconsole roscpp rostime std-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Tools for directing, throttling, selecting, and otherwise messing with
    ROS topics at a meta level. None of the programs in this package actually
    know about the topics whose streams they are altering; instead, these
    tools deal with messages as generic binary blobs. This means they can be
    applied to any ROS topic.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
