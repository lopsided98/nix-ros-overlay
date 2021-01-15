
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-core, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-distance-map-opencv";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/kinetic/distance_map_opencv/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "f12c8bbf72c10e62bf039586d82ff841e08dbf6eb211e93006fc56ea32fc742f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ distance-map-core image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node package of the map_distance project.
    It contains the ROS node that instantiate the
    distance map plugin.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
