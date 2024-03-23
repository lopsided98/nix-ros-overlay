
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-rolling-imu-tools";
  version = "2.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/rolling/imu_tools/2.1.3-3.tar.gz";
    name = "2.1.3-3.tar.gz";
    sha256 = "7ceef624256eee9416c406c97e52ff24c876b18e94e666107815dea9449329db";
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
