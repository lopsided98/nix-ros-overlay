
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-rolling-mola-imu-preintegration";
  version = "1.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/rolling/mola_imu_preintegration/1.14.1-1.tar.gz";
    name = "1.14.1-1.tar.gz";
    sha256 = "f659a898d11c7365d90c20426a903ca6397ad484978fff7904b8ee3227888253";
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
