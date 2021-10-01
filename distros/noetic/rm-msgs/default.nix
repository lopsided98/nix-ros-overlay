
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-msgs";
  version = "0.1.7-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_msgs/0.1.7-3.tar.gz";
    name = "0.1.7-3.tar.gz";
    sha256 = "5cbfcb09b9b23668ecbe61880c234908ad0c86754819dbfd7cb4a970b8d729b9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_msgs package provides all the messages for all kind of robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
