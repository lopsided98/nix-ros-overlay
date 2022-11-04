
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-command-gui, cob-dashboard, cob-helper-tools, cob-interactive-teleop, cob-monitoring, cob-script-server, cob-teleop }:
buildRosPackage {
  pname = "ros-noetic-cob-command-tools";
  version = "0.6.29-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_command_tools/0.6.29-1.tar.gz";
    name = "0.6.29-1.tar.gz";
    sha256 = "376800c395a7fcbfd6a3e19b6b98f2e581d8e3aa63fdeed98a6b5cc57dfe3332";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-command-gui cob-dashboard cob-helper-tools cob-interactive-teleop cob-monitoring cob-script-server cob-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
