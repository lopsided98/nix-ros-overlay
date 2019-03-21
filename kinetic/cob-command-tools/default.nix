
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-teleop, cob-monitoring, cob-script-server, cob-command-gui, catkin, cob-interactive-teleop, cob-helper-tools, cob-dashboard }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-tools";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_tools/0.6.10-0.tar.gz;
    sha256 = "a5f32f92645d77140d8c94920e8977e2ef210ca5e17abeea41202be114d3fe9a";
  };

  propagatedBuildInputs = [ cob-teleop cob-dashboard cob-helper-tools cob-monitoring cob-script-server cob-command-gui cob-interactive-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    #license = lib.licenses.Apache 2.0;
  };
}
