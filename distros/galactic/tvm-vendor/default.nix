
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, libxml2, openblas, ros-environment, spirv-headers, spirv-tools, vulkan-loader }:
buildRosPackage {
  pname = "ros-galactic-tvm-vendor";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tvm_vendor-release/archive/release/galactic/tvm_vendor/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "efdf5cc7eca03274071447deaace5760cd60b2caecdd6cbd92b948c6a9564429";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ git libxml2 openblas spirv-headers spirv-tools vulkan-loader ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around Apache TVM to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
