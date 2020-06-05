
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, roscpp-serialization, tf, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-noetic-ublox-gps";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/noetic/ublox_gps/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "a2c10e5abab19013e7676686dfe5b12651ebb5e631927a0f1e843178e4ad8acf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater roscpp roscpp-serialization tf ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for u-blox GPS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
