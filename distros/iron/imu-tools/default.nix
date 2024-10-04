
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-complementary-filter, imu-filter-madgwick, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-iron-imu-tools";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/iron/imu_tools/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "ad61ccb32dcf5694666aae4576b4e1abf7acf2323ffd1af61dae01fad3e6e86b";
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
