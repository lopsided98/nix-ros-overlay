
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-grid-map-msgs";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_msgs/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "e2d6e7a3c2d9a849d0f112f100209e618a8a4dd8040cc8049c875f0441bc52e1";
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
