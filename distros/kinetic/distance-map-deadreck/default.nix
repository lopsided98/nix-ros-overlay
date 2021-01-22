
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-core }:
buildRosPackage {
  pname = "ros-kinetic-distance-map-deadreck";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/kinetic/distance_map_deadreck/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "8b741db7ebf047c6730a6bd2c22f3f88548f0396cf675318ef7b8e9eda7016ea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ distance-map-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node package of the map_distance project.
    It contains the ROS node that instantiate the
    distance map plugin.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
