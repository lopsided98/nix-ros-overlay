
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-control, husky-description, imu-filter-madgwick, imu-transformer, lms1xx, microstrain-3dmgx2-imu, microstrain-mips, nmea-comms, nmea-navsat-driver, pythonPackages, realsense2-camera, robot-localization, robot-upstart, roslaunch, tf, tf2-ros, um6, um7, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-melodic-husky-bringup";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_bringup/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "3711bc5572b8d7c9f007973a55120682e24326359e43fba62824d1b0f756a2b8";
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
