
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, imu-complementary-filter, catkin, rviz-imu-plugin, imu-filter-madgwick }:
buildRosPackage {
  pname = "ros-melodic-imu-tools";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/imu_tools/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "8fd6b517a5550d0e5151db6599ed9e4eacaca2e299846939932f35f5d0ca3569";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-complementary-filter rviz-imu-plugin imu-filter-madgwick ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
