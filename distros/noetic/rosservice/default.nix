
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosgraph, roslib, rosmsg, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosservice";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosservice/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "9db6300e3a25d2b10e8f70f9554da89a64cfd31d5e10839cd5acba289021ee1c";
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
