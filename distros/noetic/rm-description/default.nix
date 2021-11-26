
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-rm-description";
  version = "0.1.7-r4";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_description/0.1.7-4.tar.gz";
    name = "0.1.7-4.tar.gz";
    sha256 = "1470e78b4939ea96d15657aab38ad091b072978c8328b81d099e4135bf692c28";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster robot description files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
