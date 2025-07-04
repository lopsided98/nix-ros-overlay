
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-jazzy-imu-pipeline";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/jazzy/imu_pipeline/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "0a6b1640ea273d0110aac10ba1960a3f67cedc5defba5039f84a65a73f118acd";
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
