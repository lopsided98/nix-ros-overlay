
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-rolling-imu-tools";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/rolling/imu_tools/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "cb7fef154960d8f14cd6f0b8fedb3a22f5055b4b4a5e680dc8a701666cc1e3d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick rviz-imu-plugin ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Various tools for IMU devices";
    license = with lib.licenses; [ "BSD-&-GPL" ];
  };
}
