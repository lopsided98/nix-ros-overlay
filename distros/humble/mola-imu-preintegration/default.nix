
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-imu-preintegration";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_imu_preintegration/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "72b280f8b8e93ff916abccc9075ff92d9e36e5899cafa6f77a6468df0816b5e4";
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
