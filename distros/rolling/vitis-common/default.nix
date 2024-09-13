
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ament-vitis, ocl-icd, opencl-clhpp }:
buildRosPackage {
  pname = "ros-rolling-vitis-common";
  version = "0.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vitis_common-release/archive/release/rolling/vitis_common/0.4.2-3.tar.gz";
    name = "0.4.2-3.tar.gz";
    sha256 = "9747d48c55d5467df1b10389862e152eec502ef72df247b1311610f54990d02d";
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
