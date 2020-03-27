
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-command-gui, cob-dashboard, cob-helper-tools, cob-interactive-teleop, cob-monitoring, cob-script-server, cob-teleop }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-tools";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_tools/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "a4277c9adbbd4f2334e44bf7d297f0c2b95c019079ebf2f4facc269cbc949602";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-command-gui cob-dashboard cob-helper-tools cob-interactive-teleop cob-monitoring cob-script-server cob-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
