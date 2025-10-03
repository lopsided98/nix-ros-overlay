
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-imu-preintegration";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/jazzy/mola_imu_preintegration/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "b174ef3ede56a8f9cbd0f05720f9fab88a6a9fef6919178ef5be395012c3524b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Integrator of IMU angular velocity readings";
    license = with lib.licenses; [ gpl3Only ];
  };
}
