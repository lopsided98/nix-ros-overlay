
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nav-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-distance-map-msgs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/melodic/distance_map_msgs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "6e42332f75de13d580826ac98f1d6ccead3ea761d88f09c0ced6047494abbf39";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime nav-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Definition of the distance map message type.'';
    license = with lib.licenses; [ asl20 ];
  };
}
