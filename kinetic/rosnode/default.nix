
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, rosgraph, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-rosnode";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosnode/1.12.14-0.tar.gz;
    sha256 = "67a92127e9afea2f6bd62a6bec36a085e5f7f38dd54d731fb20a38b3b4d8200a";
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
