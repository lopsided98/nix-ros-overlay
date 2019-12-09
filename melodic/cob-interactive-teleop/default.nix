
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, interactive-markers, std-msgs, tf, catkin, rviz, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-interactive-teleop";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_interactive_teleop/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "951e70090c4936c9c40a0f57e7728040512e045de237b7c750d3c8b3f7ef9fac";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs interactive-markers std-msgs tf visualization-msgs roscpp ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers std-msgs tf rviz visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    license = with lib.licenses; [ asl20 ];
  };
}
