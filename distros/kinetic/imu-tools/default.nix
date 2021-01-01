
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-kinetic-imu-tools";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/imu_tools/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "6f5b247697b14842f9f8fd675e1355b2dccd326828adbdf48c167ad95166c8bb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick rviz-imu-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
