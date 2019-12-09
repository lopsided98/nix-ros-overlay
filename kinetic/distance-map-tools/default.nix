
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, interactive-markers, catkin, distance-map-core, visualization-msgs, backward-ros }:
buildRosPackage {
  pname = "ros-kinetic-distance-map-tools";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/kinetic/distance_map_tools/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "2229648856e7bb45720c0bb8768c78b025416d06e0185d4d19a38764f072c8ff";
  };

  buildType = "catkin";
  buildInputs = [ backward-ros distance-map-core visualization-msgs interactive-markers ];
  propagatedBuildInputs = [ backward-ros distance-map-core visualization-msgs interactive-markers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node package of the map_distance project.
    It contains the ROS node that instantiate the
    distance map plugin.'';
    license = with lib.licenses; [ asl20 ];
  };
}
