
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cras-cpp-common, laser-geometry, nodelet, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-cras-laser-geometry";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/cras_laser_geometry/-/archive/release/noetic/cras_laser_geometry/1.1.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "af16611168b59f9cd76d5fbaa8dad8a3f55d53d8e8e0328d347ad3fbce5ad344";
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
