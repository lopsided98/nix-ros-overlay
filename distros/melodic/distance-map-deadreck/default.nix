
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-core }:
buildRosPackage {
  pname = "ros-melodic-distance-map-deadreck";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/melodic/distance_map_deadreck/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "8a15566ebd8f5a596780668824ad86528c57a0649bc8d00de146f124ceae396e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ distance-map-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node package of the map_distance project.
    It contains the ROS node that instantiate the
    distance map plugin.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
