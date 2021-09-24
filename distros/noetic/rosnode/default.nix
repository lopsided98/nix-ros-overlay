
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosgraph, rostest, rostopic }:
buildRosPackage {
  pname = "ros-noetic-rosnode";
  version = "1.15.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosnode/1.15.13-1.tar.gz";
    name = "1.15.13-1.tar.gz";
    sha256 = "fbe88044c8c39e2c7b174b07002dff0e9092961b2f156196630a58e8aafd23c8";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ rosgraph rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosnode is a command-line tool for displaying debug information
    about ROS <a href="http://wiki.ros.org/Nodes">Nodes</a>,
    including publications, subscriptions and connections. It also
    contains an experimental library for retrieving node
    information. This library is intended for internal use only.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
