
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-iron-eigen3-cmake-module";
  version = "0.2.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen3_cmake_module-release/archive/release/iron/eigen3_cmake_module/0.2.2-4.tar.gz";
    name = "0.2.2-4.tar.gz";
    sha256 = "f5348e1b8c5bfa132f5041725c84f7af8c30e2d3e5366697699218fead6faeb8";
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
