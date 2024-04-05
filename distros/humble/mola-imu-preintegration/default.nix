
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-imu-preintegration";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_imu_preintegration/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "fb5979faaeb3efb123420ba8161cd0d50857409c6017315ab4d1ac1b49066828";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Integrator of IMU angular velocity readings";
    license = with lib.licenses; [ gpl3Only ];
  };
}
