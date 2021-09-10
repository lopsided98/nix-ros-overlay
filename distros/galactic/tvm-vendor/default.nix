
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, libxml2, openblas, ros-environment, spirv-headers, spirv-tools, vulkan-loader }:
buildRosPackage {
  pname = "ros-galactic-tvm-vendor";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/autowarefoundation/tvm_vendor-release/archive/release/galactic/tvm_vendor/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "b0fb82c63fe0dcf47a26f531e4bf88fbbbb1b03b2af5c7b5c5e193309678c4bc";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ git libxml2 openblas spirv-headers spirv-tools vulkan-loader ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around Apache TVM to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
