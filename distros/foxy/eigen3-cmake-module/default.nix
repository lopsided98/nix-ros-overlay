
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-foxy-eigen3-cmake-module";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen3_cmake_module-release/archive/release/foxy/eigen3_cmake_module/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "0f41b3b7ccb8094f1c74a0e357f50f1dc80fe6e6e685ae4dbdde83a93c6044fa";
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
