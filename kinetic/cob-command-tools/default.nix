
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-teleop, cob-monitoring, cob-script-server, cob-command-gui, catkin, cob-interactive-teleop, cob-helper-tools, cob-dashboard }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-tools";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_tools/0.6.11-0.tar.gz;
    sha256 = "521d58bd47fdb2e4aeeecf06d4afb4f2095bbf5aeded8779f5add0f3d9fc8060";
  };

  propagatedBuildInputs = [ cob-teleop cob-dashboard cob-helper-tools cob-monitoring cob-script-server cob-command-gui cob-interactive-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    #license = lib.licenses.Apache 2.0;
  };
}
