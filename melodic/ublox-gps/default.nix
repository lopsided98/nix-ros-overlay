
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, roscpp-serialization, tf, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-gps";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_gps/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "ef380666fecf4c3b12c7ac0b2c7e8f59548898a8774616eadb03b42b171859ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater roscpp roscpp-serialization tf ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for u-blox GPS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
