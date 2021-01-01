
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-actions, cob-light, cob-mimic, cob-sound, control-msgs, geometry-msgs, message-generation, message-runtime, move-base-msgs, pythonPackages, rospy, rostest, std-msgs, std-srvs, tf, trajectory-msgs, urdfdom-py }:
buildRosPackage {
  pname = "ros-kinetic-cob-script-server";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_script_server/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "e4ad0de4f69a0e5ec9399a542b6ca2f41d7ca7a2dc400449fcd8cd750fa5a22f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-actions cob-light cob-mimic cob-sound control-msgs geometry-msgs message-runtime move-base-msgs pythonPackages.ipython pythonPackages.pygraphviz pythonPackages.six rospy rostest std-msgs std-srvs tf trajectory-msgs urdfdom-py ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''The cob_script_server package provides a simple interface to operate Care-O-bot. It can be used via the python API or the actionlib interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
