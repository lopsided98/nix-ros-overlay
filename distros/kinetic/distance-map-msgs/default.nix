
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nav-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-distance-map-msgs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/kinetic/distance_map_msgs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "864098f2693e220b4004f4840e77f3e9d81a92acc2461f86d50eb89f1199a1b1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime nav-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Definition of the distance map message type.'';
    license = with lib.licenses; [ asl20 ];
  };
}
