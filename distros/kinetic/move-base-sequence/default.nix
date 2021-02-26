
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, move-base-msgs, nav-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-move-base-sequence";
  version = "0.0.1-r6";

  src = fetchurl {
    url = "https://github.com/MarkNaeem/move_base_sequence-release/archive/release/kinetic/move_base_sequence/0.0.1-6.tar.gz";
    name = "0.0.1-6.tar.gz";
    sha256 = "66709c4a6323d7770f03ac43a1a00b126503f3712b2b6ed9cf331dc08ecfbc3b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime move-base-msgs nav-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base_sequence package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
