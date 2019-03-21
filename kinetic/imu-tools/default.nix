
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, imu-complementary-filter, rviz-imu-plugin, catkin, imu-filter-madgwick }:
buildRosPackage {
  pname = "ros-kinetic-imu-tools";
  version = "1.1.6";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/imu_tools/1.1.6-0.tar.gz;
    sha256 = "af91da8ce144823010eac19bf2cc9f9bc54d48a3fc83a7eac0ba4feaa327909a";
  };

  propagatedBuildInputs = [ imu-complementary-filter rviz-imu-plugin imu-filter-madgwick ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    #license = lib.licenses.BSD, GPL;
  };
}
