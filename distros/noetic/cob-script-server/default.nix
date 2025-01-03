
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-actions, cob-light, cob-mimic, cob-sound, control-msgs, geometry-msgs, message-generation, message-runtime, move-base-msgs, python3Packages, rospy, rostest, std-msgs, std-srvs, tf, trajectory-msgs, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-cob-script-server";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_script_server/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "0da592c6b9c9ded672cb63c7b0d68418a044d65b59291b59d30c9fcd7e98fce8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-actions cob-light cob-mimic cob-sound control-msgs geometry-msgs message-runtime move-base-msgs python3Packages.ipython python3Packages.pygraphviz python3Packages.six rospy rostest std-msgs std-srvs tf trajectory-msgs urdfdom-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "The cob_script_server package provides a simple interface to operate Care-O-bot. It can be used via the python API or the actionlib interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
