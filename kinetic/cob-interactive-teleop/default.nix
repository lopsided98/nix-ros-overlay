
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rviz, interactive-markers, visualization-msgs, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-interactive-teleop";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_interactive_teleop/0.6.14-1.tar.gz;
    sha256 = "ecf0cc9c8fe2a27d9411f0a08c732d47c57a2bba6261d79d3816fca76e0b4694";
  };

  buildInputs = [ roscpp interactive-markers visualization-msgs std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ roscpp rviz interactive-markers visualization-msgs std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    license = with lib.licenses; [ asl20 ];
  };
}
