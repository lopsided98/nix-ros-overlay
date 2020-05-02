
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-control, husky-description, imu-filter-madgwick, imu-transformer, lms1xx, microstrain-3dmgx2-imu, microstrain-mips, nmea-comms, nmea-navsat-driver, pythonPackages, robot-localization, robot-upstart, roslaunch, tf, tf2-ros, um6, um7 }:
buildRosPackage {
  pname = "ros-kinetic-husky-bringup";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_bringup/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "df298a29948a5a2dcae7d1ff019416549b3a4d64d8dca7c17bb82a36b869ec66";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-base husky-control husky-description imu-filter-madgwick imu-transformer lms1xx microstrain-3dmgx2-imu microstrain-mips nmea-comms nmea-navsat-driver pythonPackages.scipy robot-localization robot-upstart tf tf2-ros um6 um7 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
