
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-melodic-imu-tools";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/imu_tools/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "4ee66ea61a29712ddfcafb76dade45b7d90d83093255fcdec12e7f68f3c5abe9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick rviz-imu-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
