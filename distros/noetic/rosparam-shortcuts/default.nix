
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, eigen-conversions, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rosparam-shortcuts";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/rosparam_shortcuts-release/archive/release/noetic/rosparam_shortcuts/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "620eb7c2013dac4e8b2ebb9704e36e702482639ffa6af293058870c6001d8ab7";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen roslint ];
  propagatedBuildInputs = [ eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Quickly load variables from rosparam with good command line error checking.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
