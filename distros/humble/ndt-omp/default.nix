
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pcl, ros-environment }:
buildRosPackage {
  pname = "ros-humble-ndt-omp";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ndt_omp-release/archive/release/humble/ndt_omp/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "c2a18a3aa3121fe16330abcf12de5618986362743b3be07046c6115d906513fa";
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
