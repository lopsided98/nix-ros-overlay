
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-msgs";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_msgs/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "20c42f29aeaa71e8e64de505e4c409757f22a96ff00e0c36814d8f0d5090787a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime sensor-msgs std-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''ublox_msgs contains raw messages for u-blox GNSS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
