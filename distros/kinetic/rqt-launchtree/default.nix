
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kinetic-rqt-launchtree";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/pschillinger/rqt_launchtree-release/archive/release/kinetic/rqt_launchtree/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "f9f0f62ac68638a58ca94642aeebc1ae4792d46754a31dc4a5d352ff24029305";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roslaunch rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An RQT plugin for hierarchical launchfile configuration introspection.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
