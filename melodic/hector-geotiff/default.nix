
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-nav-msgs, nav-msgs, pluginlib, qt4, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-hector-geotiff";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_geotiff/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "c536b4ab26359dd301470c0b2aa2e26aba77ea63bd70b54b53e8f0686ef6dffb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-map-tools hector-nav-msgs nav-msgs pluginlib qt4 roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_geotiff provides a node that can be used to save occupancy grid map, robot trajectory and object of interest data to RoboCup Rescue compliant GeoTiff images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
