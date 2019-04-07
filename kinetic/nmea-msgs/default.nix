
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-nmea-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/nmea_msgs-release/archive/release/kinetic/nmea_msgs/1.1.0-0.tar.gz;
    sha256 = "c4309447901276e86de75e5fb216fc2d9e430fb81df83fed51ec14f42e5ba862";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_msgs package contains messages related to data in the NMEA format.'';
    #license = lib.licenses.BSD;
  };
}
