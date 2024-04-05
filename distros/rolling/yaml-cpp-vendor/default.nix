
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-yaml-cpp-vendor";
  version = "8.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/rolling/yaml_cpp_vendor/8.3.2-1.tar.gz";
    name = "8.3.2-1.tar.gz";
    sha256 = "d44531ec33e038f0a54f43033353adab7c623e3104b8e070182f2064a6a94e76";
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
