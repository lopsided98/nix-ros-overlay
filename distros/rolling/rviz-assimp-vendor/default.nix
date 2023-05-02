
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, assimp }:
buildRosPackage {
  pname = "ros-rolling-rviz-assimp-vendor";
  version = "12.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_assimp_vendor/12.5.0-2.tar.gz";
    name = "12.5.0-2.tar.gz";
    sha256 = "69f0c7f62f53a62d313ec0daebd8df450d5a212c5ad4d54700e8b29c8e14d793";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ assimp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around assimp, providing nothing but a dependency on assimp, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of assimp.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
