
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, genpy, rosgraph-msgs, roslib, rosgraph, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rospy";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rospy/1.13.7-0.tar.gz;
    sha256 = "f3fd1e464ef4d66e2cfb79e936671f82978b9b3fb6033c2bfda3bda4dea64297";
  };

  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.rospkg roscpp pythonPackages.pyyaml rosgraph-msgs roslib rosgraph std-msgs genpy ];
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
