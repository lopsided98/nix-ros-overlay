
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, microstrain-3dmgx2-imu, tf, husky-base, robot-upstart, imu-transformer, nmea-navsat-driver, husky-control, imu-filter-madgwick, um7, um6, tf2-ros, catkin, pythonPackages, nmea-comms, robot-localization, roslaunch, lms1xx, microstrain-mips, husky-description }:
buildRosPackage {
  pname = "ros-kinetic-husky-bringup";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_bringup/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "586e3ede9bdc9740e52248469c6522fcfe6d9aabcb28d033be6bbea7fa822b8e";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ um6 microstrain-3dmgx2-imu pythonPackages.scipy tf husky-base robot-upstart imu-transformer nmea-navsat-driver nmea-comms husky-control robot-localization microstrain-mips imu-filter-madgwick husky-description um7 tf2-ros lms1xx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
