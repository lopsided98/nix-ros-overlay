
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cras-cpp-common, laser-geometry, nodelet, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-cras-laser-geometry";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/cras_laser_geometry/-/archive/release/noetic/cras_laser_geometry/1.2.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "6d6b08416ff9d133015b2eaf95889b8a355ac77583a4e0193e59b91d83bfdd49";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cras-cpp-common laser-geometry nodelet roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Tools for working with laser scans.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
