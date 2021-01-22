
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-nav-msgs, nav-msgs, pluginlib, qt5, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-geotiff";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_geotiff/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "b95664c752e8832726ef80928a1794da031f20d7a62871392dc6cb37d29a6505";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-map-tools hector-nav-msgs nav-msgs pluginlib qt5.qtbase qt5.qtimageformats roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_geotiff provides a node that can be used to save occupancy grid map, robot trajectory and object of interest data to RoboCup Rescue compliant GeoTiff images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
