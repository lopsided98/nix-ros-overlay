
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, libxml2, ocl-icd, openblas, opencl-clhpp, ros-environment, spirv-headers, spirv-tools, vulkan-loader }:
buildRosPackage {
  pname = "ros-kilted-tvm-vendor";
  version = "0.9.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tvm_vendor-release/archive/release/kilted/tvm_vendor/0.9.1-4.tar.gz";
    name = "0.9.1-4.tar.gz";
    sha256 = "b9822018263d4d0348bf8d339380ad894aed798f38cee4f58f0aa10a6bb703c4";
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
