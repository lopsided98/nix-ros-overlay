
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mrpt-containers, mrpt-obs, mrpt-poses }:
buildRosPackage {
  pname = "ros-lyrical-mola-imu-preintegration";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/lyrical/mola_imu_preintegration/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "9d0c6bd05cb8a572818a8dc2cde0f5b66d62bd96041e52ab60a3b30057ff3b59";
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
