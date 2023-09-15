
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-imu-preintegration";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_imu_preintegration/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "b4c53d06ccf60198a654dee68210187caa6343c9ed566b6a970d081aab7d288d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Integrator of IMU angular velocity readings'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
