
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-actionlib-tutorials";
  version = "0.1.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/melodic/actionlib_tutorials/0.1.11-0.tar.gz;
    sha256 = "202b1bd5a2d7cde96dcd20fa54fb6fc017ec6e1252575b5413618310c536163e";
  };

  buildInputs = [ message-generation actionlib-msgs actionlib std-msgs roscpp ];
  propagatedBuildInputs = [ roscpp message-runtime actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_tutorials package'';
    #license = lib.licenses.BSD;
  };
}
