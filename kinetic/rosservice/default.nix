
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmsg, genpy, rosgraph, rospy, roslib }:
buildRosPackage {
  pname = "ros-kinetic-rosservice";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosservice/1.12.14-0.tar.gz;
    sha256 = "07e1b9e8ffa899a2765087d0ad6cb7875afc8d56604d29507f2894302eaa1fc9";
  };

  propagatedBuildInputs = [ genpy rosmsg rosgraph rospy roslib ];
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
