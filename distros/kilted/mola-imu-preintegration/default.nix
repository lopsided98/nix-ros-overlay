
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mrpt-containers, mrpt-obs, mrpt-poses }:
buildRosPackage {
  pname = "ros-kilted-mola-imu-preintegration";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/kilted/mola_imu_preintegration/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "c4d3a7fe2b6ebf58dc905e3c190f5658fb75cecbb860e3978772c16932f397ba";
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
