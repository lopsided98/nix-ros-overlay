
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-control, husky-description, imu-filter-madgwick, imu-transformer, lms1xx, microstrain-3dmgx2-imu, microstrain-mips, nmea-comms, nmea-navsat-driver, pythonPackages, realsense2-camera, robot-localization, robot-upstart, roslaunch, tf, tf2-ros, um6, um7, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-melodic-husky-bringup";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_bringup/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "aa5875b5fbb97579a4bcde6ea36a5082c429ede9dc7ac39d1e55dc8ea012e5e7";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-base husky-control husky-description imu-filter-madgwick imu-transformer lms1xx microstrain-3dmgx2-imu microstrain-mips nmea-comms nmea-navsat-driver pythonPackages.scipy realsense2-camera robot-localization robot-upstart tf tf2-ros um6 um7 velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
