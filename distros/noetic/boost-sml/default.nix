
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-boost-sml";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/boost_sml-release/archive/release/noetic/boost_sml/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f711e5bed75fd7d931b4db94f59f73e57b3af679f6525b01d4b0e1869f72f045";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ boost roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''State machine library with ros logging'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
