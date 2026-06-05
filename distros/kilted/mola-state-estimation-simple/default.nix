
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-kilted-mola-state-estimation-simple";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/kilted/mola_state_estimation_simple/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "40e8ec18cb722dce781f6e7448159f730d50a6210ed1e10104ec6d6e80d167f2";
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
