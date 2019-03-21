
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, rospy, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-rqt-launchtree";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/pschillinger/rqt_launchtree-release/archive/release/kinetic/rqt_launchtree/0.2.0-0.tar.gz;
    sha256 = "f9f0f62ac68638a58ca94642aeebc1ae4792d46754a31dc4a5d352ff24029305";
  };

  propagatedBuildInputs = [ rqt-gui-py roslaunch rqt-gui rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An RQT plugin for hierarchical launchfile configuration introspection.'';
    #license = lib.licenses.BSD;
  };
}
