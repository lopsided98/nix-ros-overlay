
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, cob-actions, tf, geometry-msgs, cob-sound, cob-mimic, pythonPackages, message-generation, message-runtime, std-srvs, control-msgs, trajectory-msgs, catkin, move-base-msgs, cob-light, std-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-cob-script-server";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_script_server/0.6.14-1.tar.gz;
    sha256 = "2f40e33e982ad277ecd0059f7e9635a318f7fb2bf891faf6d40e6b4288d0e61c";
  };

  buildInputs = [ actionlib-msgs trajectory-msgs rostest message-generation actionlib ];
  propagatedBuildInputs = [ std-srvs cob-sound actionlib-msgs cob-mimic control-msgs trajectory-msgs pythonPackages.ipython pythonPackages.pygraphviz move-base-msgs rostest cob-light rospy message-runtime actionlib std-msgs cob-actions tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_script_server package provides a simple interface to operate Care-O-bot. It can be used via the python API or the actionlib interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
