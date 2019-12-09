
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-runtime, std-msgs, catkin, ublox-serialization, message-generation }:
buildRosPackage {
  pname = "ros-melodic-ublox-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "71cc141fd9777fae71ac599811dc414d4cc1f393d8aa7dbcca29cec3a72a417b";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs ublox-serialization ];
  propagatedBuildInputs = [ sensor-msgs std-msgs message-runtime ublox-serialization ];
  nativeBuildInputs = [ message-generation catkin ];

  meta = {
    description = ''ublox_msgs contains raw messages for u-blox GNSS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
