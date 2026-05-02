
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-rolling-imu-pipeline";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_pipeline/0.6.1-2.tar.gz";
    name = "0.6.1-2.tar.gz";
    sha256 = "439920b78dec763df882e4d37492fc3773d31347cede52f5496b9cc673968c93";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-processors imu-transformer ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "imu_pipeline";
    license = with lib.licenses; [ bsdOriginal "GPL" ];
  };
}
