
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, genmsg, mesh-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-label-manager";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/label_manager/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "6f518b4fed635ef2f8bb4a4a292f6ad2ef5cbaec5b235acedc73f54aed5502f3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs genmsg mesh-msgs message-generation message-runtime roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Serving and persisting label information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
