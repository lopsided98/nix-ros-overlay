
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ament-vitis, ocl-icd, opencl-clhpp }:
buildRosPackage {
  pname = "ros-humble-vitis-common";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vitis_common-release/archive/release/humble/vitis_common/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "c2414f1d502ae5839dd31fc9b17a7b578d9f99a733a7fca6781db1cf811d09f1";
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
