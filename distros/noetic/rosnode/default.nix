
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosgraph, rostest, rostopic }:
buildRosPackage {
  pname = "ros-noetic-rosnode";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosnode/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "ead2ef7c21fd1d786aef6a1404c6f1c1776281ef89e5c52763bb0354426b686e";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ rosgraph rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rosnode is a command-line tool for displaying debug information
    about ROS <a href=\"http://wiki.ros.org/Nodes\">Nodes</a>,
    including publications, subscriptions and connections. It also
    contains an experimental library for retrieving node
    information. This library is intended for internal use only.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
