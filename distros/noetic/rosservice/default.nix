
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosgraph, roslib, rosmsg, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosservice";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosservice/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "667123f16a6a2c13640d94281a795a8fdf5b9643e863065499aa5d9203642f48";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genpy rosgraph roslib rosmsg rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosservice contains the rosservice command-line tool for listing
    and querying ROS <a href="http://wiki.ros.org/Services">Services</a>. It also
    contains a Python library for retrieving information about
    Services and dynamically invoking them. The Python library is
    experimental and is for internal-use only.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
