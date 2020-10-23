
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-boost-sml";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/boost_sml-release/archive/release/noetic/boost_sml/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "2891cee5591557ee71954b873685dd2a9fbd99c81a05b175f777849c8eca83f6";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''State machine library with ros logging'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
