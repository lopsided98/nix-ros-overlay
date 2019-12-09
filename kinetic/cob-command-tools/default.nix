
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-monitoring, cob-teleop, cob-dashboard, catkin, cob-helper-tools, cob-interactive-teleop, cob-command-gui, cob-script-server }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-tools";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_tools/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "7f360a64c14aa16c3b605383bb5ec09f4dd3a6d49639cb29e04ca7ced3f16002";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-monitoring cob-teleop cob-dashboard cob-helper-tools cob-interactive-teleop cob-command-gui cob-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
