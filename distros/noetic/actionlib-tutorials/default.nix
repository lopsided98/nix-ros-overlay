
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-actionlib-tutorials";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/actionlib_tutorials/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ed23df795555dc2032041aaaf30d85adc0856aef3e5a02fbaa3010229eb2b200";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs catkin message-generation std-msgs ];
  propagatedBuildInputs = [ actionlib message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
