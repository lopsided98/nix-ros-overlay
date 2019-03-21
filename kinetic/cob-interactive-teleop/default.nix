
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rviz, interactive-markers, visualization-msgs, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-interactive-teleop";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_interactive_teleop/0.6.10-0.tar.gz;
    sha256 = "4deaf8d2defa3d88ded7e19d436dc003ca29dca94d0320fe8954363c782e44f2";
  };

  propagatedBuildInputs = [ rviz interactive-markers visualization-msgs geometry-msgs std-msgs tf roscpp ];
  nativeBuildInputs = [ catkin interactive-markers visualization-msgs std-msgs tf roscpp geometry-msgs ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    #license = lib.licenses.Apache 2.0;
  };
}
