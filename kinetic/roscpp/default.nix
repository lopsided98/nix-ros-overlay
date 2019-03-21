
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cpp-common, roscpp-traits, catkin, pkg-config, rosgraph-msgs, message-generation, message-runtime, xmlrpcpp, roscpp-serialization, std-msgs, roslang, rostime }:
buildRosPackage {
  pname = "ros-kinetic-roscpp";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roscpp/1.12.14-0.tar.gz;
    sha256 = "4520279b2c32794d79ca4217ab61bc92cb6229d71a04312859b71d95f794e1a0";
  };

  propagatedBuildInputs = [ rosconsole cpp-common roscpp-traits rosgraph-msgs message-runtime xmlrpcpp roscpp-serialization std-msgs rostime ];
  nativeBuildInputs = [ rosconsole cpp-common roscpp-traits catkin pkg-config rosgraph-msgs message-generation roslang xmlrpcpp roscpp-serialization std-msgs rostime ];

  meta = {
    description = ''roscpp is a C++ implementation of ROS. It provides
    a <a href="http://www.ros.org/wiki/Client%20Libraries">client
    library</a> that enables C++ programmers to quickly interface with
    ROS <a href="http://ros.org/wiki/Topics">Topics</a>,
    <a href="http://ros.org/wiki/Services">Services</a>,
    and <a href="http://ros.org/wiki/Parameter Server">Parameters</a>.

    roscpp is the most widely used ROS client library and is designed to
    be the high-performance library for ROS.'';
    #license = lib.licenses.BSD;
  };
}
