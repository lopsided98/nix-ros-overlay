
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-imu-preintegration";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/jazzy/mola_imu_preintegration/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "35b468c063b82e20bfa6bb033256a02003542a86bf7346e5b688eb1e45d4c6dc";
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
