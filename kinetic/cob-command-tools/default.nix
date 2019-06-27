
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-teleop, cob-monitoring, cob-script-server, cob-command-gui, catkin, cob-interactive-teleop, cob-helper-tools, cob-dashboard }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-tools";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_tools/0.6.12-1.tar.gz;
    sha256 = "b8b4a4b64a2508051d5563e887bde407d59e445ef559fb73c7af3ba0b3ae7b9d";
  };

  propagatedBuildInputs = [ cob-teleop cob-monitoring cob-script-server cob-command-gui cob-interactive-teleop cob-helper-tools cob-dashboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
