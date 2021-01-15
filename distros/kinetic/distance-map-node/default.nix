
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-distance-map-node";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/kinetic/distance_map_node/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "bfa2b0ecd145b590187a5cbb94adc0408ca0113b138dbb9ed52faec89829d36e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ distance-map-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node package of the map_distance project.
    It contains the ROS node that instantiate the
    distance map plugin.'';
    license = with lib.licenses; [ asl20 ];
  };
}
