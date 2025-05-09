
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosgraph, rostest, rostopic }:
buildRosPackage {
  pname = "ros-noetic-rosnode";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosnode/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "5c87d100b1e82b6f329cbbdb114234113e0e5bf3c9dffa4bc8c22964794209d2";
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
