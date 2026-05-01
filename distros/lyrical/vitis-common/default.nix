
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ament-vitis, ocl-icd, opencl-clhpp }:
buildRosPackage {
  pname = "ros-lyrical-vitis-common";
  version = "0.4.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vitis_common-release/archive/release/lyrical/vitis_common/0.4.2-5.tar.gz";
    name = "0.4.2-5.tar.gz";
    sha256 = "1a7ed14d0da59ffc975d43677cba97e4e971f0921f029508fa4d06ed87c5997d";
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
