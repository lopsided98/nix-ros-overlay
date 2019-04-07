
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-grid-map-msgs";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_msgs/1.6.1-0.tar.gz;
    sha256 = "0fb40a3caa90ebc1d116a96f2779e15443e7f4e3f06c96d8e3f3fd8946326c8d";
  };

  buildInputs = [ std-msgs message-generation roscpp geometry-msgs ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Definition of the multi-layered grid map message type.'';
    #license = lib.licenses.BSD;
  };
}
