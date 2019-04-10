
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, rosgraph, rostopic }:
buildRosPackage {
  pname = "ros-lunar-rosnode";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosnode/1.13.7-0.tar.gz;
    sha256 = "2f9cf0539b9d18c931e21c1ae3aa891cd446c50f772a765e3d6b42f5902d4188";
  };

  buildInputs = [ rostest ];
  propagatedBuildInputs = [ rosgraph rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosnode is a command-line tool for displaying debug information
    about ROS <a href="http://www.ros.org/wiki/Nodes">Nodes</a>,
    including publications, subscriptions and connections. It also
    contains an experimental library for retrieving node
    information. This library is intended for internal use only.'';
    #license = lib.licenses.BSD;
  };
}
