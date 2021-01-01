
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-core, distance-map-deadreck, distance-map-msgs, distance-map-node, distance-map-opencv, distance-map-rviz, distance-map-tools }:
buildRosPackage {
  pname = "ros-kinetic-distance-map";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/kinetic/distance_map/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "5242728136342733c11c092be44fc922bcfa654cc18f1b975957677330474b2c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ distance-map-core distance-map-deadreck distance-map-msgs distance-map-node distance-map-opencv distance-map-rviz distance-map-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The distance_map metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
