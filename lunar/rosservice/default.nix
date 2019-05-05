
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmsg, genpy, rosgraph, rospy, roslib }:
buildRosPackage {
  pname = "ros-lunar-rosservice";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosservice/1.13.7-0.tar.gz;
    sha256 = "b52aabd3ee539d0ea3fdbc5ee31e9ec1aaed06046b9f64a7520caabbe740ca94";
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
