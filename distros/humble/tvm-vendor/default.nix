
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, libxml2, ocl-icd, openblas, opencl-clhpp, ros-environment, spirv-headers, spirv-tools, vulkan-loader }:
buildRosPackage {
  pname = "ros-humble-tvm-vendor";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tvm_vendor-release/archive/release/humble/tvm_vendor/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "32d78982b81c327f4c209850db239995c93c91c154e60df896d9afc719bd106b";
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
