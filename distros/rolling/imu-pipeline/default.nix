
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-rolling-imu-pipeline";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_pipeline/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "84c4a59456594452cea9c7046c1eb5824d1857e83cb730867e32b050bcb6c4c6";
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
