
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-msgs";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_msgs/1.6.1-0.tar.gz;
    sha256 = "82c732926ce0965e638f2bac463a831946130800b38ce20dd7360e7c1966c823";
  };

  buildInputs = [ std-msgs message-generation roscpp geometry-msgs ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Definition of the multi-layered grid map message type.'';
    #license = lib.licenses.BSD;
  };
}
