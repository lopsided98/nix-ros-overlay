
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-core, distance-map-deadreck, distance-map-msgs, distance-map-node, distance-map-opencv, distance-map-rviz, distance-map-tools }:
buildRosPackage {
  pname = "ros-melodic-distance-map";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/melodic/distance_map/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "262190723b5fa17407d598707e424582868c71fa6848ecf408d7208ecb2b74d1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ distance-map-core distance-map-deadreck distance-map-msgs distance-map-node distance-map-opencv distance-map-rviz distance-map-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The distance_map metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
