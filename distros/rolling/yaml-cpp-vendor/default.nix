
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-yaml-cpp-vendor";
  version = "9.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/rolling/yaml_cpp_vendor/9.2.1-1.tar.gz";
    name = "9.2.1-1.tar.gz";
    sha256 = "548f43a929f4f573a190cb1f3a8591f4b9017c74db5c57a826a281f22c0a05df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
