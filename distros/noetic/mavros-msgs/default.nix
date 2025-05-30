
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mavros-msgs";
  version = "1.20.1-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/mavros_msgs/1.20.1-1.tar.gz";
    name = "1.20.1-1.tar.gz";
    sha256 = "6953748f2d8f7959a48890018da90bf9fba6b4442ac877dbc7430b4abb5d7ce7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "mavros_msgs defines messages for <a href=\"http://wiki.ros.org/mavros\">MAVROS</a>.";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
