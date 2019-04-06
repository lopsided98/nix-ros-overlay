
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rviz, interactive-markers, visualization-msgs, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-interactive-teleop";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_interactive_teleop/0.6.11-0.tar.gz;
    sha256 = "4beba9c4829f9c177fdd4fd78a5f1c112b336e2d234d475304c4b4c1d9533db5";
  };

  propagatedBuildInputs = [ rviz interactive-markers visualization-msgs geometry-msgs std-msgs tf roscpp ];
  nativeBuildInputs = [ catkin interactive-markers visualization-msgs std-msgs tf roscpp geometry-msgs ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    #license = lib.licenses.Apache 2.0;
  };
}
