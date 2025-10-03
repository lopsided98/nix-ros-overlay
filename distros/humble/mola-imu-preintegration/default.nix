
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libobs }:
buildRosPackage {
  pname = "ros-humble-mola-imu-preintegration";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/humble/mola_imu_preintegration/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "5c4f91fe37db5a4fa2eabad052a4c2b6f33825b7e61e37b9b0ce72ed3fe6dfe0";
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
