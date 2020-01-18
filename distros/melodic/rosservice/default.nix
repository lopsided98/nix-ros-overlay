
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosgraph, roslib, rosmsg, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosservice";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosservice/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "3c702a38cbf823bf15ade07745f11dd6b19af38b936630dbadb3473aea130e36";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genpy rosgraph roslib rosmsg rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosservice contains the rosservice command-line tool for listing
    and querying ROS <a href="http://www.ros.org/wiki/Services">Services</a>. It also
    contains a Python library for retrieving information about
    Services and dynamically invoking them. The Python library is
    experimental and is for internal-use only.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
