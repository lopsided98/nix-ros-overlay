
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-rolling-mola-imu-preintegration";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/rolling/mola_imu_preintegration/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "c13f0d54d4a8c455ed9de7c6ac48919d575ed34ac207269bcdc2648d3d8ddd83";
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
