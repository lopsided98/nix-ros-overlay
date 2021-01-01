
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, grid-map-msgs, grid-map-ros, nav-msgs, roscpp, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-grid-map-visualization";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_visualization/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "cfb35863409f06d2485133b40720b320bbb76be69fa9bc3b2d54f60aa2333233";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-core grid-map-msgs grid-map-ros nav-msgs roscpp sensor-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configurable tool to visualize grid maps in RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
