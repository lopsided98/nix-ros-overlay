
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, libxml2, ocl-icd, openblas, opencl-clhpp, ros-environment, spirv-headers, spirv-tools, vulkan-loader }:
buildRosPackage {
  pname = "ros-jazzy-tvm-vendor";
  version = "0.9.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tvm_vendor-release/archive/release/jazzy/tvm_vendor/0.9.1-4.tar.gz";
    name = "0.9.1-4.tar.gz";
    sha256 = "2ed480ecfa7fdbc8adfe6dc680e72dd7c26edc4e62f6ab50041cbdd0bcee080d";
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
