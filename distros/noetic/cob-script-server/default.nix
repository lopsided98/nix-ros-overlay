
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-actions, cob-light, cob-mimic, cob-sound, control-msgs, geometry-msgs, message-generation, message-runtime, move-base-msgs, python3Packages, pythonPackages, rospy, rostest, std-msgs, std-srvs, tf, trajectory-msgs, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-cob-script-server";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_script_server/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "0b16d3e6cf3c8e11355774a05fda4fef0b1698917492e6de84bf81199df15b8e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-actions cob-light cob-mimic cob-sound control-msgs geometry-msgs message-runtime move-base-msgs python3Packages.ipython python3Packages.pygraphviz pythonPackages.six rospy rostest std-msgs std-srvs tf trajectory-msgs urdfdom-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The cob_script_server package provides a simple interface to operate Care-O-bot. It can be used via the python API or the actionlib interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
