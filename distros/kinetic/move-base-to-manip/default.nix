
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, interactive-markers, message-generation, message-runtime, move-base-msgs, moveit-core, moveit-ros-planning-interface, roscpp, tf, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-move-base-to-manip";
  version = "1.0.18-r1";

  src = fetchurl {
    url = "https://github.com/UTNuclearRoboticsPublic/move_base_to_manip-release/archive/release/kinetic/move_base_to_manip/1.0.18-1.tar.gz";
    name = "1.0.18-1.tar.gz";
    sha256 = "2a97381641acf66a09208a595f6756519c14fe5464609e0b4a8051fad978d089";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs interactive-markers message-generation message-runtime move-base-msgs moveit-core moveit-ros-planning-interface roscpp tf tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move the robot base until a desired end-effector pose can be reached.'';
    license = with lib.licenses; [ "See license.txt" ];
  };
}
