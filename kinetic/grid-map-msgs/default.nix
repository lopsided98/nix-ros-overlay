
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-msgs";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_msgs/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "ebc9b7f7d548a67625f37480fc32c00e436ce7951935e989c9272ffb909b00cf";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs roscpp ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs roscpp message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Definition of the multi-layered grid map message type.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
