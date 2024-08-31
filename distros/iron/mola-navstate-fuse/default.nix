
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-iron-mola-navstate-fuse";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_navstate_fuse/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "c88393840ac33ded0f0c13054e100e03170a3655fb3765bfa3794e69ed796bc2";
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
