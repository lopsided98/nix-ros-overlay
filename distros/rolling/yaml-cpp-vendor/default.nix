
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-yaml-cpp-vendor";
  version = "8.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/rolling/yaml_cpp_vendor/8.3.1-2.tar.gz";
    name = "8.3.1-2.tar.gz";
    sha256 = "8cf0d1c01d63e8f9673b27c8cb3f096827f47015fb6af2933fb226ffc865adda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
