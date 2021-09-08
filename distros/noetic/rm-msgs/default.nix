
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-msgs";
  version = "0.1.1-r5";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_msgs/0.1.1-5.tar.gz";
    name = "0.1.1-5.tar.gz";
    sha256 = "818f207b30dc64bd121e80eab1e6339d09049e993160ffe5ff26fb8f8b64cdab";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_msgs package provides all the messages for all kind of robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
