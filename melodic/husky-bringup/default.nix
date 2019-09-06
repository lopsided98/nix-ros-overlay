
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, microstrain-3dmgx2-imu, husky-description, lms1xx, robot-localization, tf, nmea-navsat-driver, pythonPackages, roslaunch, um6, imu-filter-madgwick, imu-transformer, microstrain-mips, catkin, tf2-ros, nmea-comms, um7, husky-base, robot-upstart, husky-control }:
buildRosPackage {
  pname = "ros-melodic-husky-bringup";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_bringup/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "9256b7e21c47fbb8355d166e661d080ffa812b5128c8b3695af8afdc97dc9de8";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ nmea-navsat-driver microstrain-3dmgx2-imu husky-control microstrain-mips husky-base pythonPackages.scipy tf2-ros husky-description lms1xx robot-localization nmea-comms robot-upstart um6 tf imu-filter-madgwick imu-transformer um7 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
