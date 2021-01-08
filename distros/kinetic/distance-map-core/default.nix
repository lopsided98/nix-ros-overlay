
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, distance-map-msgs, nav-msgs, pluginlib, roscpp, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-distance-map-core";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/kinetic/distance_map_core/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "2be9525e5902f2fc8268e7c2ba0120ea6753d0043a301d594cae3c11ba789210";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d distance-map-msgs nav-msgs pluginlib roscpp tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The distance_map_core package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
