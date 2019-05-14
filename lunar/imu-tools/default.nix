
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, imu-complementary-filter, rviz-imu-plugin, catkin, imu-filter-madgwick }:
buildRosPackage {
  pname = "ros-lunar-imu-tools";
  version = "1.2.1-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/lunar/imu_tools/1.2.1-1.tar.gz;
    sha256 = "9d9bd800b8bd211a918945aeca7069cceceac2e0e6d9d493855f3fa01c677f28";
  };

  propagatedBuildInputs = [ imu-complementary-filter rviz-imu-plugin imu-filter-madgwick ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
