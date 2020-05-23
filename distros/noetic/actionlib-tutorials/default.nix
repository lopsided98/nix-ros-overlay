
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-actionlib-tutorials";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/actionlib_tutorials/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "28273e58e2d14c96dbdf0d62e882223c483fb633d2001866b39370086d3b837f";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs message-generation std-msgs ];
  propagatedBuildInputs = [ actionlib message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
