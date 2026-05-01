
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-lyrical-imu-pipeline";
  version = "0.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/lyrical/imu_pipeline/0.6.1-3.tar.gz";
    name = "0.6.1-3.tar.gz";
    sha256 = "ca60847ec0ea04c7c1a0d0f0cdd70e91dab4cbd24967d4d952b06be6b59555ac";
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
