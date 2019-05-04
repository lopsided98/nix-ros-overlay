
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, microstrain-3dmgx2-imu, nmea-navsat-driver, robot-upstart, husky-control, husky-base, catkin, pythonPackages, tf2-ros, husky-description, lms1xx, robot-localization, imu-filter-madgwick, um6, tf, nmea-comms, imu-transformer, um7 }:
buildRosPackage {
  pname = "ros-kinetic-husky-bringup";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_bringup/0.3.3-0.tar.gz;
    sha256 = "c9dfca407c5f6ecf93ef5b13be4a80cf562dc322b84d62f45e770b7c1de1d228";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ microstrain-3dmgx2-imu nmea-navsat-driver husky-control husky-base pythonPackages.scipy tf2-ros husky-description lms1xx um7 robot-localization robot-upstart um6 tf nmea-comms imu-transformer imu-filter-madgwick ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
