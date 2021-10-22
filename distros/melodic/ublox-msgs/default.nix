
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-msgs";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_msgs/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "59386408efdc588104e4e2a02cd698f428b3ae7bfc27e5d1918f15101e60cd9c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime sensor-msgs std-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''ublox_msgs contains raw messages for u-blox GNSS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
