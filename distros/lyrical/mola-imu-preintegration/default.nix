
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-lyrical-mola-imu-preintegration";
  version = "1.16.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/lyrical/mola_imu_preintegration/1.16.0-3.tar.gz";
    name = "1.16.0-3.tar.gz";
    sha256 = "519101a544c7277e8f3aa44df3b3fb5fe0500d6800f61754a6d7df1d7ad50ead";
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
