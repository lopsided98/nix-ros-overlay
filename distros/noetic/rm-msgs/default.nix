
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-msgs";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_msgs/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "419293c8673984d13fa4a4e0de0caf7506260f8619bb4a2236a4845dc52895b5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_msgs package provides all the messages for all kind of robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
