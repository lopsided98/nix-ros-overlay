
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-lyrical-mola-imu-preintegration";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/lyrical/mola_imu_preintegration/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "77bb3fbe805b9a68bf44f1ba3ba992443933d6b5038d60fb4efcc74a181344a2";
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
