
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, tf2-geometry-msgs, catkin, tf2, nav-msgs, roscpp, distance-map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-distance-map-core";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/kinetic/distance_map_core/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "2be9525e5902f2fc8268e7c2ba0120ea6753d0043a301d594cae3c11ba789210";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d pluginlib tf2-geometry-msgs tf2 nav-msgs roscpp distance-map-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib tf2-geometry-msgs tf2 nav-msgs roscpp distance-map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The distance_map_core package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
