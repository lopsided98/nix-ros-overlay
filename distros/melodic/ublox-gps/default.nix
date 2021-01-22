
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, roscpp-serialization, tf, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-gps";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_gps/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "a55576ce6b61e9a6b3d08bff772d646169aaed410be63fbe8be6acad2b3e53c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater roscpp roscpp-serialization tf ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for u-blox GPS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
