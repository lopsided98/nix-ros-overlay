
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-command-gui, cob-dashboard, cob-helper-tools, cob-monitoring, cob-script-server, cob-teleop }:
buildRosPackage {
  pname = "ros-noetic-cob-command-tools";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_command_tools/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "d3ee71f812f54504c01cd66702def323f8e0543aa54c466ebfe09a75bcf470e1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-command-gui cob-dashboard cob-helper-tools cob-monitoring cob-script-server cob-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_command_tools stack provides tools, for operating Care-O-bot.";
    license = with lib.licenses; [ asl20 ];
  };
}
