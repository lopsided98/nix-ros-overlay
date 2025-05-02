
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosgraph, roslib, rosmsg, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosservice";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosservice/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "f37ba29ee452cc753a54906ab5f3d3a0dc70f90fa36253f0816bfafabee79fe9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ genpy rosgraph roslib rosmsg rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rosservice contains the rosservice command-line tool for listing
    and querying ROS <a href=\"http://wiki.ros.org/Services\">Services</a>. It also
    contains a Python library for retrieving information about
    Services and dynamically invoking them. The Python library is
    experimental and is for internal-use only.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
