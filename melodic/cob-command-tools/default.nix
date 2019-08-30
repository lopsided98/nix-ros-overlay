
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-teleop, cob-monitoring, cob-script-server, cob-command-gui, catkin, cob-interactive-teleop, cob-helper-tools, cob-dashboard }:
buildRosPackage {
  pname = "ros-melodic-cob-command-tools";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_command_tools/0.6.14-1.tar.gz;
    sha256 = "f66be4484792dca3d9430646d834338509150b69473af0074e7c8e3f1c9ba3bb";
  };

  propagatedBuildInputs = [ cob-teleop cob-monitoring cob-script-server cob-command-gui cob-interactive-teleop cob-helper-tools cob-dashboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
