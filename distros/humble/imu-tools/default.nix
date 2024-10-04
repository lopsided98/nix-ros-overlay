
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-humble-imu-tools";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/humble/imu_tools/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "86274d62a0ea488885be38268e6d1fc6d323ce60d0e168eb0dc7e68392cbd3d4";
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
