
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-command-gui, cob-dashboard, cob-helper-tools, cob-monitoring, cob-script-server, cob-teleop }:
buildRosPackage {
  pname = "ros-noetic-cob-command-tools";
  version = "0.6.34-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_command_tools/0.6.34-1.tar.gz";
    name = "0.6.34-1.tar.gz";
    sha256 = "975db7a7e291f00f79d5f4b83a5ddba16f3a2d4c7947532b16038b0e743fbcb8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-command-gui cob-dashboard cob-helper-tools cob-monitoring cob-script-server cob-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_command_tools stack provides tools, for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
