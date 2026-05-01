
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-lyrical-mola-state-estimation-simple";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_state_estimation_simple/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "387ba128a9b07eea58c8cb4167b58945646644d784ab05f2a0a3d103a460816b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-imu-preintegration mola-kernel mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "SE(3) pose and twist path data fusion estimator";
    license = with lib.licenses; [ gpl3Only ];
  };
}
