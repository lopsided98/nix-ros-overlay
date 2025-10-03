
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-kilted-mola-imu-preintegration";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/kilted/mola_imu_preintegration/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "0155ce876e51c82f0eb6578206e209f4906c0cdd004521b6c0bfa75e1078a062";
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
