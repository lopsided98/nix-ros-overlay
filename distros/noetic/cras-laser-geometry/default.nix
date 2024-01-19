
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cras-cpp-common, laser-geometry, nodelet, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-cras-laser-geometry";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/cras_laser_geometry/-/archive/release/noetic/cras_laser_geometry/1.2.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "cea28091ce7dcad0395299e2f629ba989c2852bd2f281745e4ac9f584a7d35ed";
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
