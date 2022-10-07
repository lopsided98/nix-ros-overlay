
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mavros-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/mavros_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "0c4c3d4fc190727c8fb53a00017ebba7f05f6d35f2c9fb598f6ae34da9a97ef3";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mavros_msgs defines messages for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
