
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-jazzy-hebi-cpp-api";
  version = "3.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/jazzy/hebi_cpp_api/3.15.0-1.tar.gz";
    name = "3.15.0-1.tar.gz";
    sha256 = "b34cf8ae404e46aa74913856cb4096cb05d1b66e748ef58b25eab7884d89d882";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
