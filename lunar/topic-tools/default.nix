
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cpp-common, catkin, rostime, rostest, message-generation, message-runtime, xmlrpcpp, std-msgs, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-topic-tools";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/topic_tools/1.13.7-0.tar.gz;
    sha256 = "8337c21acfeb39f1bf045f2d38403fe6cead94f27b95c5661eee92bdb63578a1";
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
