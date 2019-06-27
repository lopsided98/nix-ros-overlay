
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, cob-actions, tf, geometry-msgs, cob-sound, cob-mimic, pythonPackages, message-generation, message-runtime, std-srvs, control-msgs, trajectory-msgs, catkin, move-base-msgs, cob-light, std-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-cob-script-server";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_script_server/0.6.12-1.tar.gz;
    sha256 = "7f5cc918cdeef1eba226f9956f55be29aac4ec21f7b36cb31f6941d285c79527";
  };

  buildInputs = [ actionlib-msgs trajectory-msgs rostest message-generation actionlib ];
  propagatedBuildInputs = [ std-srvs cob-sound actionlib-msgs cob-mimic control-msgs trajectory-msgs pythonPackages.ipython pythonPackages.pygraphviz move-base-msgs rostest cob-light rospy message-runtime actionlib std-msgs cob-actions tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_script_server package provides a simple interface to operate Care-O-bot. It can be used via the python API or the actionlib interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
