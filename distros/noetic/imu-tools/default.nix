
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-noetic-imu-tools";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/noetic/imu_tools/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "ffbb383013e7396a60c056533ec89c69ddf3b61577bb8e9bee0b059678d083f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick rviz-imu-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
