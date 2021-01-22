
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, pythonPackages, roscpp, rosgraph, rosgraph-msgs, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rospy";
  version = "1.12.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rospy/1.12.17-1.tar.gz";
    name = "1.12.17-1.tar.gz";
    sha256 = "08a7e7c2dba29eb5e821d960233dd9bd2a9ed650cfa568acfdeaeb5eeb904d2e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genpy pythonPackages.numpy pythonPackages.pyyaml pythonPackages.rospkg roscpp rosgraph rosgraph-msgs roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospy is a pure Python client library for ROS. The rospy client
    API enables Python programmers to quickly interface with ROS <a href="http://ros.org/wiki/Topics">Topics</a>, <a href="http://ros.org/wiki/Services">Services</a>, and <a href="http://ros.org/wiki/Parameter Server">Parameters</a>. The
    design of rospy favors implementation speed (i.e. developer
    time) over runtime performance so that algorithms can be quickly
    prototyped and tested within ROS. It is also ideal for
    non-critical-path code, such as configuration and initialization
    code. Many of the ROS tools are written in rospy to take
    advantage of the type introspection capabilities.

    Many of the ROS tools, such
    as <a href="http://ros.org/wiki/rostopic">rostopic</a>
    and <a href="http://ros.org/wiki/rosservice">rosservice</a>, are
    built on top of rospy.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
