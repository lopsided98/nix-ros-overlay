
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roscpp, rviz, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-interactive-teleop";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_interactive_teleop/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "774c58a8e4a2eec21b04172da7df89cacc9efa4cba901cdb506671ed1dbe2e6b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs interactive-markers roscpp rviz std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    license = with lib.licenses; [ asl20 ];
  };
}
