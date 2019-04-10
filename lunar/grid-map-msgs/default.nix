
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-grid-map-msgs";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_msgs/1.6.1-0.tar.gz;
    sha256 = "39c247b465f7d4f44d159606e42c37d0ccccd0bcf461a49fa02f63a58cde5dda";
  };

  buildInputs = [ std-msgs message-generation roscpp geometry-msgs ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Definition of the multi-layered grid map message type.'';
    #license = lib.licenses.BSD;
  };
}
