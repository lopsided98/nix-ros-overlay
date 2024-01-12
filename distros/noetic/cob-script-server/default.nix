
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-actions, cob-light, cob-mimic, cob-sound, control-msgs, geometry-msgs, message-generation, message-runtime, move-base-msgs, python3Packages, rospy, rostest, std-msgs, std-srvs, tf, trajectory-msgs, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-cob-script-server";
  version = "0.6.33-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_script_server/0.6.33-1.tar.gz";
    name = "0.6.33-1.tar.gz";
    sha256 = "b6c71cc57acd88113277e2b4c4ee28d4d39f21e489913c8cd21be2d29263185a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-actions cob-light cob-mimic cob-sound control-msgs geometry-msgs message-runtime move-base-msgs python3Packages.ipython python3Packages.pygraphviz python3Packages.six rospy rostest std-msgs std-srvs tf trajectory-msgs urdfdom-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The cob_script_server package provides a simple interface to operate Care-O-bot. It can be used via the python API or the actionlib interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
