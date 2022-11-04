
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, move-base-msgs, nav-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-move-base-sequence";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/MarkNaeem/move_base_sequence-release/archive/release/melodic/move_base_sequence/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "0dd3d48f276425cf5c51be52e9845c7732e9a988a5c07456e3e63ca8e8e91f99";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime move-base-msgs nav-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base_sequence package'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
