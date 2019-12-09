
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, distance-map-msgs, pluginlib, catkin, roscpp, tf2-geometry-msgs, costmap-2d, tf2, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-distance-map-core";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/melodic/distance_map_core/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "281115ed9ad36366fedc4b2b84245e907975f598c2ae1a6be6bed67cf5e31b50";
  };

  buildType = "catkin";
  buildInputs = [ distance-map-msgs pluginlib tf2 tf2-geometry-msgs costmap-2d roscpp nav-msgs ];
  propagatedBuildInputs = [ distance-map-msgs pluginlib roscpp costmap-2d tf2-geometry-msgs tf2 nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The distance_map_core package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
