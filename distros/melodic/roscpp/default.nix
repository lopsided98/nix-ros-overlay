
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, message-generation, message-runtime, pkg-config, rosconsole, roscpp-serialization, roscpp-traits, rosgraph-msgs, roslang, rostime, std-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-roscpp";
  version = "1.14.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/roscpp/1.14.10-1.tar.gz";
    name = "1.14.10-1.tar.gz";
    sha256 = "1d195e27879effecc7bc19596f5f95e52b24d17d97062491acd91739f9fb5eac";
  };

  buildType = "catkin";
  buildInputs = [ message-generation pkg-config roslang ];
  propagatedBuildInputs = [ cpp-common message-runtime rosconsole roscpp-serialization roscpp-traits rosgraph-msgs rostime std-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp is a C++ implementation of ROS. It provides
    a <a href="http://wiki.ros.org/Client%20Libraries">client
    library</a> that enables C++ programmers to quickly interface with
    ROS <a href="http://ros.org/wiki/Topics">Topics</a>,
    <a href="http://ros.org/wiki/Services">Services</a>,
    and <a href="http://ros.org/wiki/Parameter Server">Parameters</a>.

    roscpp is the most widely used ROS client library and is designed to
    be the high-performance library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
