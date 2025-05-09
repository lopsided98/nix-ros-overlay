
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosgraph, roslib, rosmsg, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosservice";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosservice/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "047ce76ea4f41cce1a6607fb247709755bf24a67f70c55ed5c5fb387e70ace42";
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
