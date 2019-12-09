
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-monitoring, cob-teleop, cob-dashboard, catkin, cob-helper-tools, cob-interactive-teleop, cob-command-gui, cob-script-server }:
buildRosPackage {
  pname = "ros-melodic-cob-command-tools";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_command_tools/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "84a137502724a990c827376866b80330d8273dd1780931940f0e03bd9a1aebd8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-monitoring cob-teleop cob-dashboard cob-helper-tools cob-interactive-teleop cob-command-gui cob-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
