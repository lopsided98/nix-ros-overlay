
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-galactic-imu-tools";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/galactic/imu_tools/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "b70b99282cbf82182b239499fbae570bda1c39d4a8cea531445b6ecd5bd33499";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick rviz-imu-plugin ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ "BSD-&-GPL" ];
  };
}
