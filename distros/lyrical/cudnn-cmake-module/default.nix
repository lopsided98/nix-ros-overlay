
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-lyrical-cudnn-cmake-module";
  version = "0.0.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cudnn_cmake_module-release/archive/release/lyrical/cudnn_cmake_module/0.0.1-7.tar.gz";
    name = "0.0.1-7.tar.gz";
    sha256 = "b027901f1c1c701c4bfdd74442aef41e80afb1ef7f88b05af0c08c081b2e6aa1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Exports a CMake module to find cuDNN.";
    license = with lib.licenses; [ asl20 ];
  };
}
