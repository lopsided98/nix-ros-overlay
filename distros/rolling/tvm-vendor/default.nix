
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, libxml2, ocl-icd, openblas, opencl-clhpp, ros-environment, spirv-headers, spirv-tools, vulkan-loader }:
buildRosPackage {
  pname = "ros-rolling-tvm-vendor";
  version = "0.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tvm_vendor-release/archive/release/rolling/tvm_vendor/0.9.1-3.tar.gz";
    name = "0.9.1-3.tar.gz";
    sha256 = "1e612afb43c2d0200ca96efd993ee28887ee05723ed72a4518af7b3d2cd77d9f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ git libxml2 ocl-icd openblas opencl-clhpp spirv-headers spirv-tools vulkan-loader ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper around Apache TVM to make it available to the ROS ecosystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
