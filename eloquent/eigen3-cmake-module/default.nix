
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-eloquent-eigen3-cmake-module";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen3_cmake_module-release/archive/release/eloquent/eigen3_cmake_module/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "799aed29956d8ccba712d196e8c487f9f6032edb503bb5ce32fdd63a98ea4f0e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Exports a custom CMake module to find Eigen3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
