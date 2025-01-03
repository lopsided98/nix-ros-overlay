
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-yaml-cpp-vendor";
  version = "9.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/jazzy/yaml_cpp_vendor/9.0.1-1.tar.gz";
    name = "9.0.1-1.tar.gz";
    sha256 = "892d234d2e4f42be53fca06543266f9fc704b18a97133982432795fa58b01fec";
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
