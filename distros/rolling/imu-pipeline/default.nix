
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-rolling-imu-pipeline";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_pipeline/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "ec06d302db033b28b0a78e49d178f633c624bf7006392a556eb1c5af51cbe7fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-processors imu-transformer ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''imu_pipeline'';
    license = with lib.licenses; [ bsdOriginal "GPL" ];
  };
}
