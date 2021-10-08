
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-rm-description";
  version = "0.1.7-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_description/0.1.7-3.tar.gz";
    name = "0.1.7-3.tar.gz";
    sha256 = "ce1edcca5d7d79f4efb39108eb0ff9e1a7348a270c601e0c81abb57298c80bd7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster robot description files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
