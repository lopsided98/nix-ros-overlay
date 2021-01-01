
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-nav-msgs, nav-msgs, pluginlib, qt5, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-geotiff";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_geotiff/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "bc74ce50e70964f2519da9233f540189a4222079a821085d6a4e4a3d1605da9d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-map-tools hector-nav-msgs nav-msgs pluginlib qt5.qtbase qt5.qtimageformats roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_geotiff provides a node that can be used to save occupancy grid map, robot trajectory and object of interest data to RoboCup Rescue compliant GeoTiff images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
