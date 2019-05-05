
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, sensor-msgs, catkin, roscpp, grid-map-ros, nav-msgs, visualization-msgs, grid-map-msgs, tf }:
buildRosPackage {
  pname = "ros-lunar-grid-map-visualization";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_visualization/1.6.1-0.tar.gz;
    sha256 = "2eb7a67efc0e76849b1534c8336d146cc18436a6b38e7f2ef908df36275ad2cc";
  };

  buildInputs = [ grid-map-core tf sensor-msgs grid-map-ros nav-msgs visualization-msgs grid-map-msgs roscpp ];
  propagatedBuildInputs = [ grid-map-core tf sensor-msgs grid-map-ros nav-msgs visualization-msgs grid-map-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configurable tool to visualize grid maps in RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
