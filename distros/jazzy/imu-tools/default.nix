
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-jazzy-imu-tools";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/jazzy/imu_tools/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "8e780ae9452c0d1f0e178ac4093e0055eaafe1fd0a8d3c20c14fb2713e2468bb";
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
