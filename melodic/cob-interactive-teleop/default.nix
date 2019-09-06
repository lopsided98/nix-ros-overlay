
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rviz, interactive-markers, visualization-msgs, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-interactive-teleop";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_interactive_teleop/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "f05f40166f42486431a4075b08cf1ff4a638d9e29b6aa7b86ca037b5fa997ebe";
  };

  buildType = "catkin";
  buildInputs = [ roscpp interactive-markers visualization-msgs std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ tf rviz interactive-markers visualization-msgs std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    license = with lib.licenses; [ asl20 ];
  };
}
