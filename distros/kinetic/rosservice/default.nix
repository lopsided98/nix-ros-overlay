
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, rosgraph, roslib, rosmsg, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rosservice";
  version = "1.12.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosservice/1.12.16-1.tar.gz";
    name = "1.12.16-1.tar.gz";
    sha256 = "f51d308e5ad0688f4b4e631745811b1306d1ced1d2a6386460f7d18fac108b44";
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
