
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, imu-complementary-filter, rviz-imu-plugin, catkin, imu-filter-madgwick }:
buildRosPackage {
  pname = "ros-lunar-imu-tools";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/lunar/imu_tools/1.2.0-0.tar.gz;
    sha256 = "3d8941a991809f6d96109bf8a4a946dd90ca636497ac4ba7f0d7389c42d918d9";
  };

  propagatedBuildInputs = [ imu-complementary-filter rviz-imu-plugin imu-filter-madgwick ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
