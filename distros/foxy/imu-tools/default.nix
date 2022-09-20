
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-foxy-imu-tools";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/foxy/imu_tools/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "711d04a76ab71d447824b520da25b6a02255348abe179a71720ac27fd77654e6";
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
