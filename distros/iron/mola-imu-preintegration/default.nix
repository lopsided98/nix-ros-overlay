
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-imu-preintegration";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_imu_preintegration/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "24658102da265b527910c2f425a19b41daf0e3153ba72acf560020b025fcd418";
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
