
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roscpp, rviz, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-interactive-teleop";
  version = "0.6.26-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_interactive_teleop/0.6.26-1.tar.gz";
    name = "0.6.26-1.tar.gz";
    sha256 = "f19dcf3e8b33b8f9cc6e349143b0e245ff0b4114ea7f7ef7fd5357397f158466";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs interactive-markers roscpp rviz std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    license = with lib.licenses; [ asl20 ];
  };
}
