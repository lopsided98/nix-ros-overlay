
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_msgs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "234745d45a3a493de4ec69bfa596b94ee0a05dfc31fea9b37ddefbd139a07ac1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime sensor-msgs std-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''ublox_msgs contains raw messages for u-blox GNSS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
