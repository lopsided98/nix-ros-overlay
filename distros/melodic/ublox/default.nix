
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "e7ae5c8870070c6229a4a3ff637088e3e8060220889dfed4a9a6a3f563a94d6d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ublox-gps ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ublox_gps node for u-blox GPS receivers, messages, and serialization packages for the binary UBX protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
