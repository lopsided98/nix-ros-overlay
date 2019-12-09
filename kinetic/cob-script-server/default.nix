
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, cob-actions, tf, actionlib-msgs, rostest, move-base-msgs, cob-sound, urdfdom-py, std-msgs, std-srvs, pythonPackages, catkin, rospy, message-generation, cob-light, control-msgs, trajectory-msgs, actionlib, message-runtime, cob-mimic }:
buildRosPackage {
  pname = "ros-kinetic-cob-script-server";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_script_server/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "f2f05c23bf6b5d16281952d0b6464f5df1c57ba920f780a5423b2a29d0abf99e";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs actionlib actionlib-msgs message-generation rostest ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.ipython cob-actions tf actionlib-msgs rostest move-base-msgs cob-sound urdfdom-py std-msgs std-srvs rospy cob-light control-msgs trajectory-msgs actionlib pythonPackages.pygraphviz message-runtime cob-mimic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_script_server package provides a simple interface to operate Care-O-bot. It can be used via the python API or the actionlib interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
