
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, roscpp-serialization, tf, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-gps";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_gps/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "2c70f260827cb329a5525ecb937b45ede6a358967c461d91cafd8f4bf06f0f13";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater roscpp roscpp-serialization tf ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for u-blox GPS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
