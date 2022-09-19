
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, libxml2, openblas, ros-environment, spirv-headers, spirv-tools, vulkan-loader }:
buildRosPackage {
  pname = "ros-humble-tvm-vendor";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tvm_vendor-release/archive/release/humble/tvm_vendor/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "4cfd12e3f24597039c56e7cdedb38544b7286e2e5a204595eb0132d5dcbe7acd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ git libxml2 openblas spirv-headers spirv-tools vulkan-loader ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around Apache TVM to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
