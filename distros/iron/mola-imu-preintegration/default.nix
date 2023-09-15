
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-imu-preintegration";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_imu_preintegration/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "cff59fbcf73ee6fabd8ec431abc2cd197f0a3765a4767d07c4b0eb1709438cd5";
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
