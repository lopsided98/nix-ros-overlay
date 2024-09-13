
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ament-vitis, ocl-icd, opencl-clhpp }:
buildRosPackage {
  pname = "ros-jazzy-vitis-common";
  version = "0.4.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vitis_common-release/archive/release/jazzy/vitis_common/0.4.2-4.tar.gz";
    name = "0.4.2-4.tar.gz";
    sha256 = "dcf49fb9f5298743509f50c8d57da5a2ae3fd7d7f213d213f01151bc74582016";
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
