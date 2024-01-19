
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-boost-sml";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/boost_sml-release/archive/release/noetic/boost_sml/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "9c30d429372d194d44eefd350ff8d03df8b7cada5b4bedba2c6a0a0628760830";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ boost roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''State machine library with ros logging'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
