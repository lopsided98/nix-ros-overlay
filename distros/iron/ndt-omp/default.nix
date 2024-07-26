
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pcl, ros-environment }:
buildRosPackage {
  pname = "ros-iron-ndt-omp";
  version = "0.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ndt_omp-release/archive/release/iron/ndt_omp/0.0.0-2.tar.gz";
    name = "0.0.0-2.tar.gz";
    sha256 = "0b9e137622cfd7247e3dc71812daa15ac1a18b4454d03f30b101cf875bcd0304";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ros-environment ];
  propagatedBuildInputs = [ pcl ];
  nativeBuildInputs = [ ament-cmake-auto ros-environment ];

  meta = {
    description = "OpenMP boosted NDT and GICP algorithms";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
