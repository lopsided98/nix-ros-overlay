
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-command-gui, cob-dashboard, cob-helper-tools, cob-interactive-teleop, cob-monitoring, cob-script-server, cob-teleop }:
buildRosPackage {
  pname = "ros-noetic-cob-command-tools";
  version = "0.6.30-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_command_tools/0.6.30-2.tar.gz";
    name = "0.6.30-2.tar.gz";
    sha256 = "d059af62ad9fba22aef1458b6f7e4d3800a9b1e1a13b8e343eb208a90dfbf334";
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
