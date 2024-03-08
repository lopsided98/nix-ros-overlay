
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-rolling-imu-pipeline";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_pipeline/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "678f5d74e08292b32bfd7f21c3eb8129d3b509d218d4bfa36dc4a50b13032d5c";
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
