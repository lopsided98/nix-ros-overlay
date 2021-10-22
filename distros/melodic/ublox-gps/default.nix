
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, roscpp-serialization, rtcm-msgs, tf, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-gps";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_gps/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "ac19d9ba729337ae2b8bc7c3466c2042c3e26d960f4ea6862b6a362d7a5cec4d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater roscpp roscpp-serialization rtcm-msgs tf ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for u-blox GPS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
