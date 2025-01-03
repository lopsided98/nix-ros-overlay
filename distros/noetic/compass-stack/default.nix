
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compass-conversions, compass-msgs, magnetic-model, magnetometer-compass, magnetometer-pipeline }:
buildRosPackage {
  pname = "ros-noetic-compass-stack";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/compass/-/archive/release/noetic/compass_stack/2.0.3-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "6d8f29f4f88952f5b1bdeb6fa85e4eddc58144944e677c4505c677522530c2f8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ compass-conversions compass-msgs magnetic-model magnetometer-compass magnetometer-pipeline ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Tools for working with azimuths, compasses and magnetometers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
