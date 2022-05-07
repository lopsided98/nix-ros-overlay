
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-foxy-imu-tools";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/foxy/imu_tools/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "18edd4bed2e1136f553fa022b0e1bf20b3bbecf3e11e77739f1016db76b8c4bc";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick rviz-imu-plugin ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Various tools for IMU devices'';
    license = with lib.licenses; [ "BSD-&-GPL" ];
  };
}
