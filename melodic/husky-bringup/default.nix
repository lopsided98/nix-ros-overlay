
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, microstrain-3dmgx2-imu, husky-description, lms1xx, robot-localization, tf, nmea-navsat-driver, pythonPackages, roslaunch, um6, imu-filter-madgwick, imu-transformer, microstrain-mips, catkin, tf2-ros, nmea-comms, um7, husky-base, robot-upstart, husky-control }:
buildRosPackage {
  pname = "ros-melodic-husky-bringup";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_bringup/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "d94a3ac3e2d841447e45337001c85b359031895c14c7330d9c26997a851b4589";
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
