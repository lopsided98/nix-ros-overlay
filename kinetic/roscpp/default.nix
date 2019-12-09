
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, roscpp-serialization, xmlrpcpp, std-msgs, catkin, cpp-common, roscpp-traits, rostime, roslang, pkg-config, message-runtime, rosgraph-msgs, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-roscpp";
  version = "1.12.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roscpp/1.12.14-0.tar.gz";
    name = "1.12.14-0.tar.gz";
    sha256 = "4520279b2c32794d79ca4217ab61bc92cb6229d71a04312859b71d95f794e1a0";
  };

  buildType = "catkin";
  buildInputs = [ roscpp-serialization std-msgs cpp-common roscpp-traits rostime rosconsole roslang pkg-config message-generation rosgraph-msgs xmlrpcpp ];
  propagatedBuildInputs = [ roscpp-serialization std-msgs cpp-common roscpp-traits rostime rosconsole message-runtime rosgraph-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp is a C++ implementation of ROS. It provides
    a <a href="http://www.ros.org/wiki/Client%20Libraries">client
    library</a> that enables C++ programmers to quickly interface with
    ROS <a href="http://ros.org/wiki/Topics">Topics</a>,
    <a href="http://ros.org/wiki/Services">Services</a>,
    and <a href="http://ros.org/wiki/Parameter Server">Parameters</a>.

    roscpp is the most widely used ROS client library and is designed to
    be the high-performance library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
