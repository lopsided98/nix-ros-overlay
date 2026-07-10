
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-imu-preintegration";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/jazzy/mola_imu_preintegration/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "85e4a9288e0f3fb285d8cf31db74416a984f2a991d4b59bffcf5fa5f58d0bbe1";
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
