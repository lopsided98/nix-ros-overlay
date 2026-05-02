
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ament-vitis, ocl-icd, opencl-clhpp }:
buildRosPackage {
  pname = "ros-rolling-vitis-common";
  version = "0.4.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vitis_common-release/archive/release/rolling/vitis_common/0.4.2-4.tar.gz";
    name = "0.4.2-4.tar.gz";
    sha256 = "7646d8874660921bffc05b7d324cc54405db25707b83017b3a378237e8e766e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-vitis ocl-icd opencl-clhpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-vitis ];

  meta = {
    description = "Common code for working with Vitis™ Unified Software Platform in ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
