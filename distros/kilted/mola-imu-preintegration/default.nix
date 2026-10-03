
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mrpt-containers, mrpt-obs, mrpt-poses }:
buildRosPackage {
  pname = "ros-kilted-mola-imu-preintegration";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/kilted/mola_imu_preintegration/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "abbbea8f7d9bf1e286848f285ff1aab50be8ed4c0eda95641409d1da3af8795e";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mrpt-containers mrpt-obs mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Integrator of IMU angular velocity readings";
    license = with lib.licenses; [ gpl3Only ];
  };
}
