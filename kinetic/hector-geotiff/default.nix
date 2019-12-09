
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-nav-msgs, qt4, pluginlib, std-msgs, catkin, roscpp, hector-map-tools, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hector-geotiff";
  version = "0.3.5";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_geotiff/0.3.5-0.tar.gz";
    name = "0.3.5-0.tar.gz";
    sha256 = "b7a1cafda8d69bfc4ea87656efe2974e6459434d67ce5b6baa4d0b3b2a84be78";
  };

  buildType = "catkin";
  buildInputs = [ hector-nav-msgs pluginlib std-msgs qt4 roscpp hector-map-tools nav-msgs ];
  propagatedBuildInputs = [ hector-nav-msgs pluginlib std-msgs qt4 roscpp hector-map-tools nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_geotiff provides a node that can be used to save occupancy grid map, robot trajectory and object of interest data to RoboCup Rescue compliant GeoTiff images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
