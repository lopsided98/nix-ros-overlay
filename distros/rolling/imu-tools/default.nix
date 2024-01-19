
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-rolling-imu-tools";
  version = "2.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/rolling/imu_tools/2.1.3-2.tar.gz";
    name = "2.1.3-2.tar.gz";
    sha256 = "06f17018e5afa1b3e5845f24d7510ea4514d594d752822656e4da417a5134ff3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick rviz-imu-plugin ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ "BSD-&-GPL" ];
  };
}
