
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-noetic-ublox";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/noetic/ublox/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "264d5744cdc540b4320713806a0e33004b691071eeeb3d742ec49e0e4a1268e1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ublox-gps ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ublox_gps node for u-blox GPS receivers, messages, and serialization packages for the binary UBX protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
