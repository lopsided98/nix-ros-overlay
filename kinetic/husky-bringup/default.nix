
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, microstrain-3dmgx2-imu, husky-description, lms1xx, robot-localization, tf, nmea-navsat-driver, pythonPackages, roslaunch, um6, imu-filter-madgwick, imu-transformer, microstrain-mips, catkin, tf2-ros, nmea-comms, um7, husky-base, robot-upstart, husky-control }:
buildRosPackage {
  pname = "ros-kinetic-husky-bringup";
  version = "0.3.4-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_bringup/0.3.4-1.tar.gz;
    sha256 = "586e3ede9bdc9740e52248469c6522fcfe6d9aabcb28d033be6bbea7fa822b8e";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ microstrain-3dmgx2-imu nmea-navsat-driver husky-control microstrain-mips husky-base pythonPackages.scipy tf2-ros husky-description lms1xx um7 robot-localization robot-upstart um6 tf nmea-comms imu-transformer imu-filter-madgwick ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
