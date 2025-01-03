
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-rolling-imu-pipeline";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_pipeline/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "0be6cf3d3e7033fc5465c189c6aea1cb291858e4deaa54df7bbb8bb529191f7f";
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
