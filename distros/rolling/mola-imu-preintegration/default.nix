
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-rolling-mola-imu-preintegration";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/rolling/mola_imu_preintegration/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "0fc57b89357a8ca11a07b2a35e16899afc58bbbfa04fa9e715966ed64175eecc";
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
