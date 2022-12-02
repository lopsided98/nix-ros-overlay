
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-actions, cob-light, cob-mimic, cob-sound, control-msgs, geometry-msgs, message-generation, message-runtime, move-base-msgs, python3Packages, rospy, rostest, std-msgs, std-srvs, tf, trajectory-msgs, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-cob-script-server";
  version = "0.6.30-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_script_server/0.6.30-2.tar.gz";
    name = "0.6.30-2.tar.gz";
    sha256 = "a1e995fc20699852b74a77753ebc2e9d77403e7538b9b5851ec2ac4f84a3e047";
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
