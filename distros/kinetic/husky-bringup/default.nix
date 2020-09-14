
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-control, husky-description, imu-filter-madgwick, imu-transformer, lms1xx, microstrain-3dmgx2-imu, microstrain-mips, nmea-comms, nmea-navsat-driver, pythonPackages, realsense2-camera, robot-localization, robot-upstart, roslaunch, tf, tf2-ros, um6, um7 }:
buildRosPackage {
  pname = "ros-kinetic-husky-bringup";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_bringup/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "71549768208c2aeaa42f9a206c244a12181114f45d107cfd6d91440edd0a1de9";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-base husky-control husky-description imu-filter-madgwick imu-transformer lms1xx microstrain-3dmgx2-imu microstrain-mips nmea-comms nmea-navsat-driver pythonPackages.scipy realsense2-camera robot-localization robot-upstart tf tf2-ros um6 um7 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
