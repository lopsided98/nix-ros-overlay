
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-rolling-eigen3-cmake-module";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen3_cmake_module-release/archive/release/rolling/eigen3_cmake_module/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "3dec78366cbace7d26564ec5796c76a1665cb61e129efc90d6fe751b258f03f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Exports a custom CMake module to find Eigen3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
