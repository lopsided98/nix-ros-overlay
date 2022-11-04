
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-actionlib-tutorials";
  version = "0.1.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/melodic/actionlib_tutorials/0.1.11-0.tar.gz";
    name = "0.1.11-0.tar.gz";
    sha256 = "202b1bd5a2d7cde96dcd20fa54fb6fc017ec6e1252575b5413618310c536163e";
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
