
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cpp-common, catkin, rostime, rostest, message-generation, message-runtime, xmlrpcpp, std-msgs, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-topic-tools";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/topic_tools/1.12.14-0.tar.gz;
    sha256 = "5577a4043710d9474434ee05b8599eb3276dd1c48fd3df297bfc78cd50945fa9";
  };

  buildInputs = [ cpp-common rosconsole roscpp rostest message-generation xmlrpcpp std-msgs rostime rosunit ];
  propagatedBuildInputs = [ rosconsole roscpp message-runtime xmlrpcpp std-msgs rostime ];
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
