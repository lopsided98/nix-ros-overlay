
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, grid-map-cv, grid-map-demos, grid-map-filters, grid-map-loader, grid-map-msgs, grid-map-ros, grid-map-rviz-plugin, grid-map-visualization }:
buildRosPackage {
  pname = "ros-noetic-grid-map";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "02600ba8a898cef1635dccbe7e10c61fe2bf8522bbbe62c94f3884b7d64d5992";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ grid-map-core grid-map-cv grid-map-demos grid-map-filters grid-map-loader grid-map-msgs grid-map-ros grid-map-rviz-plugin grid-map-visualization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
