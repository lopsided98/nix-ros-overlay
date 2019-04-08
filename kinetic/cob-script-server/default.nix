
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, cob-actions, tf, geometry-msgs, cob-sound, cob-mimic, pythonPackages, message-generation, message-runtime, std-srvs, control-msgs, trajectory-msgs, catkin, move-base-msgs, cob-light, std-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-cob-script-server";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_script_server/0.6.11-0.tar.gz;
    sha256 = "9371132c8b744d7a8e8e1d7bb6722e641b5b0549fb940187a7bf4e2fa09d8a7c";
  };

  buildInputs = [ rostest message-generation actionlib-msgs actionlib trajectory-msgs ];
  propagatedBuildInputs = [ std-srvs cob-sound actionlib-msgs cob-mimic control-msgs trajectory-msgs pythonPackages.ipython pythonPackages.pygraphviz move-base-msgs rostest cob-light rospy message-runtime actionlib std-msgs cob-actions tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_script_server package provides a simple interface to operate Care-O-bot. It can be used via the python API or the actionlib interface.'';
    #license = lib.licenses.Apache 2.0;
  };
}
