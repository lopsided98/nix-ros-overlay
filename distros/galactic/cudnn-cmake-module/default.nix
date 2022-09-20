
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-galactic-cudnn-cmake-module";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cudnn_cmake_module-release/archive/release/galactic/cudnn_cmake_module/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "91f960c81e0d44427c7e6d6ed0f5981ac1db12c9df51d3aee14a14dcdc584bbb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Exports a CMake module to find cuDNN.'';
    license = with lib.licenses; [ asl20 ];
  };
}
