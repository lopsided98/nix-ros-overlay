
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-msgs";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_msgs/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "f8f9b32a80cb9f7c1e1beee8ceface2b8ad0cd77abeb80493d2cd3eeb26a8e74";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime sensor-msgs std-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''ublox_msgs contains raw messages for u-blox GNSS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
