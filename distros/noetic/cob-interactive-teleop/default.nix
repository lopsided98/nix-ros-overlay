
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roscpp, rviz, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-interactive-teleop";
  version = "0.6.32-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_interactive_teleop/0.6.32-1.tar.gz";
    name = "0.6.32-1.tar.gz";
    sha256 = "f31bc863451139e38e9841e0677e2408e2a3c718b19b97e4932f745eff22c822";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers roscpp rviz std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    license = with lib.licenses; [ asl20 ];
  };
}
