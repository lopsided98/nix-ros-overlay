
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roscpp, rviz, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-interactive-teleop";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_interactive_teleop/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "a7aeb054b5d056c23dd8f9595b3e0ae74b0052001bd4991fc4f2d4df9803ee2d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs interactive-markers roscpp rviz std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    license = with lib.licenses; [ asl20 ];
  };
}
