
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, imu-complementary-filter, catkin, rviz-imu-plugin, imu-filter-madgwick }:
buildRosPackage {
  pname = "ros-kinetic-imu-tools";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/imu_tools/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "79edfa193539b654ff325a22c225c68416fb51062657384caefe687b8328957d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-complementary-filter rviz-imu-plugin imu-filter-madgwick ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
