
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mrpt-containers, mrpt-obs, mrpt-poses }:
buildRosPackage {
  pname = "ros-jazzy-mola-imu-preintegration";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/jazzy/mola_imu_preintegration/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "b5956709eed6e8e27ff33c13970fa463a8d026aaaec9f370b37b8bcd1db9291e";
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
