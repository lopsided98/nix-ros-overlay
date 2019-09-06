
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, roscpp, move-base-msgs, message-generation, interactive-markers, visualization-msgs, moveit-core, message-runtime, tf, moveit-ros-planning-interface, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-move-base-to-manip";
  version = "1.0.18-r1";

  src = fetchurl {
    url = "https://github.com/UTNuclearRoboticsPublic/move_base_to_manip-release/archive/release/kinetic/move_base_to_manip/1.0.18-1.tar.gz";
    name = "1.0.18-1.tar.gz";
    sha256 = "2a97381641acf66a09208a595f6756519c14fe5464609e0b4a8051fad978d089";
  };

  buildType = "catkin";
  buildInputs = [ tf2-geometry-msgs roscpp move-base-msgs message-generation interactive-markers moveit-core eigen visualization-msgs message-runtime tf moveit-ros-planning-interface geometry-msgs ];
  propagatedBuildInputs = [ tf2-geometry-msgs roscpp move-base-msgs message-generation message-runtime interactive-markers moveit-core visualization-msgs tf moveit-ros-planning-interface geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move the robot base until a desired end-effector pose can be reached.'';
    license = with lib.licenses; [ "See license.txt" ];
  };
}
