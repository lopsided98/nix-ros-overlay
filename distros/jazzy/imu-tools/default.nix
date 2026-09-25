
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-jazzy-imu-tools";
  version = "2.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/jazzy/imu_tools/2.1.6-1.tar.gz";
    name = "2.1.6-1.tar.gz";
    sha256 = "a44dbac3e4a88649b135d0b7b56877dc15af11691cd9a429aa9bb9272baed066";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick rviz-imu-plugin ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Various tools for IMU devices";
    license = with lib.licenses; [ bsd3 gpl3Plus ];
  };
}
