
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, assimp }:
buildRosPackage {
  pname = "ros-humble-rviz-assimp-vendor";
  version = "11.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/humble/rviz_assimp_vendor/11.2.12-1.tar.gz";
    name = "11.2.12-1.tar.gz";
    sha256 = "07d3cbf4aec8c51c1ceac9c661389731d95a0466ea434f968715d12457281f07";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ assimp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper around assimp, providing nothing but a dependency on assimp, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of assimp.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
