
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-humble-imu-pipeline";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/humble/imu_pipeline/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "95bf4a07808f42ecccd23d11ea43123ec64d5e4aea098b1ac258bbf5abcd9d1c";
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
