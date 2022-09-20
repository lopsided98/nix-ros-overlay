
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, backward-ros, catkin, distance-map-core, interactive-markers, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-distance-map-tools";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/melodic/distance_map_tools/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "92f4b8ac7e83d90aae1f555aa63ccd8de442b6a6737464c648ab6c0d363d451a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ backward-ros distance-map-core interactive-markers visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node package of the map_distance project.
    It contains the ROS node that instantiate the
    distance map plugin.'';
    license = with lib.licenses; [ asl20 ];
  };
}
