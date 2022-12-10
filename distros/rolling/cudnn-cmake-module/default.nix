
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-cudnn-cmake-module";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cudnn_cmake_module-release/archive/release/rolling/cudnn_cmake_module/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "5e90f09cbb164a4a4b024babb391dd128d82feefb9a13ee92acf4913f964c8ae";
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
