
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, roscpp-serialization, tf, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-gps";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_gps/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "74f0ab6bc045b340e9fe9e19193dc8f3d44076a706aa7029e3e0e01aaca34101";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater roscpp roscpp-serialization tf ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for u-blox GPS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
