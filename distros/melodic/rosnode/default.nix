
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosgraph, rostest, rostopic }:
buildRosPackage {
  pname = "ros-melodic-rosnode";
  version = "1.14.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosnode/1.14.4-1.tar.gz";
    name = "1.14.4-1.tar.gz";
    sha256 = "5bf1275a9569bdc2831ce1cfec25578ae8ac15fa19e312e77336c6d2084676ef";
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
