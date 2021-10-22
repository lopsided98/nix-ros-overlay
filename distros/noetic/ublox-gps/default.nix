
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, roscpp-serialization, rtcm-msgs, tf, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-noetic-ublox-gps";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/noetic/ublox_gps/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "b71af92497d916723093c3d7b5d12427d6907df0b7615a0c4462922fe4090853";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater roscpp roscpp-serialization rtcm-msgs tf ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for u-blox GPS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
