
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, rospy, actionlib, cob-actions, tf, geometry-msgs, cob-sound, cob-mimic, pythonPackages, message-generation, message-runtime, std-srvs, control-msgs, trajectory-msgs, catkin, move-base-msgs, cob-light, std-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-cob-script-server";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_script_server/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "a8df1963c7e249e9a936e8618b537ffa46329bfe1be212a7922492da3eed8c59";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs trajectory-msgs rostest message-generation actionlib ];
  propagatedBuildInputs = [ std-srvs cob-sound cob-mimic actionlib-msgs control-msgs trajectory-msgs pythonPackages.ipython pythonPackages.pygraphviz move-base-msgs cob-light rostest std-msgs message-runtime actionlib rospy cob-actions tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_script_server package provides a simple interface to operate Care-O-bot. It can be used via the python API or the actionlib interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
