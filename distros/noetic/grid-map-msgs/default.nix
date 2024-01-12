
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-grid-map-msgs";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map_msgs/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "7cd126d7b28260046aa643c6717da989cb65cd1d99f980235fc9311e946886dd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Definition of the multi-layered grid map message type.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
