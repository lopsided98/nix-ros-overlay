
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-command-gui, cob-dashboard, cob-helper-tools, cob-interactive-teleop, cob-monitoring, cob-script-server, cob-teleop }:
buildRosPackage {
  pname = "ros-noetic-cob-command-tools";
  version = "0.6.28-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_command_tools/0.6.28-1.tar.gz";
    name = "0.6.28-1.tar.gz";
    sha256 = "de67fa56a27a0ee296a68bdedea01ec5fa789d607b0d863a97f3126521647c6a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-command-gui cob-dashboard cob-helper-tools cob-interactive-teleop cob-monitoring cob-script-server cob-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
