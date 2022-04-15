
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-msgs";
  version = "0.1.9-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_msgs/0.1.9-3.tar.gz";
    name = "0.1.9-3.tar.gz";
    sha256 = "15ca0ffae88015250ce02b74ebd809ef105972bb24762945df904fa42e73efa1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_msgs package provides all the messages for all kind of robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
