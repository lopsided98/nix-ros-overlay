
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosgraph, rostest, rostopic }:
buildRosPackage {
  pname = "ros-melodic-rosnode";
  version = "1.14.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosnode/1.14.12-1.tar.gz";
    name = "1.14.12-1.tar.gz";
    sha256 = "dbc27c1e6e7076fb7440c08ac096da97aa269a538d25ac94e16208edf72289d1";
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
