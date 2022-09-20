
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-distance-map-node";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/melodic/distance_map_node/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "b46d36b7c07bf2ad49b711846486be9fe3f9fa625d05fa9c3b1445c05f03268c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ distance-map-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node package of the map_distance project.
    It contains the ROS node that instantiate the
    distance map plugin.'';
    license = with lib.licenses; [ asl20 ];
  };
}
