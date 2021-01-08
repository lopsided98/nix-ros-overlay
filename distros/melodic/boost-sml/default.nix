
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-boost-sml";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/boost_sml-release/archive/release/melodic/boost_sml/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "5684c6e8c9430035a4b172f16ba480cb9cc2fd7db95f72253b291dd35e660f57";
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
