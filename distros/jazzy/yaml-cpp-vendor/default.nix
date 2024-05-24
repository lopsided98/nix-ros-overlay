
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-yaml-cpp-vendor";
  version = "9.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/jazzy/yaml_cpp_vendor/9.0.0-2.tar.gz";
    name = "9.0.0-2.tar.gz";
    sha256 = "f561c5c312bbf447916a50ecd28c465912d1c9fbbfe6d863a700f49a1782c984";
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
