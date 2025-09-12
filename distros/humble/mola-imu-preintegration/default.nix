
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-humble-mola-imu-preintegration";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/humble/mola_imu_preintegration/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "d672fb6219649681acb4b59d910847ba2bccc71e17c6d5a4e6417bbc19fb97c4";
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
