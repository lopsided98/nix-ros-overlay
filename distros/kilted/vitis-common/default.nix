
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ament-vitis, ocl-icd, opencl-clhpp }:
buildRosPackage {
  pname = "ros-kilted-vitis-common";
  version = "0.4.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vitis_common-release/archive/release/kilted/vitis_common/0.4.2-4.tar.gz";
    name = "0.4.2-4.tar.gz";
    sha256 = "0b450073f19a0965b9181236a14d961d21bff041a88ead11c9a50a5fa694efd7";
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
