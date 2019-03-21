
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, imu-complementary-filter, rviz-imu-plugin, catkin, imu-filter-madgwick }:
buildRosPackage {
  pname = "ros-melodic-imu-tools";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/imu_tools/1.2.0-0.tar.gz;
    sha256 = "35573dac659fed87d970f56ee36845f0bf8f6827a6af9e6115557231b42a4ced";
  };

  propagatedBuildInputs = [ imu-complementary-filter rviz-imu-plugin imu-filter-madgwick ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    #license = lib.licenses.BSD, GPL;
  };
}
