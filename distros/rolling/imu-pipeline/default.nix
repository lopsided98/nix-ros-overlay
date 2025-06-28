
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-rolling-imu-pipeline";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_pipeline/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "8262f6a674f654608035aa9f3e1ed12ec7f5bfc7dc456fd69283321d52afc2cb";
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
