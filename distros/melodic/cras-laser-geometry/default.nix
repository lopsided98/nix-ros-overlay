
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cras-cpp-common, laser-geometry, nodelet, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-cras-laser-geometry";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/cras_laser_geometry/-/archive/release/melodic/cras_laser_geometry/1.1.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "282c97c2aa1f7c560f53765196a35d02ec77fa7225101d3fa939480a54c5e5b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cras-cpp-common laser-geometry nodelet roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for working with laser scans.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
