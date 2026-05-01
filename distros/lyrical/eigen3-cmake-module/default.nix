
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-lyrical-eigen3-cmake-module";
  version = "0.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen3_cmake_module-release/archive/release/lyrical/eigen3_cmake_module/0.5.1-3.tar.gz";
    name = "0.5.1-3.tar.gz";
    sha256 = "75fd2230364847c9ea8f7a15b54a3391bb80980a1aab61d70bf08905fc4c1b99";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Exports a custom CMake module to find Eigen3.";
    license = with lib.licenses; [ asl20 ];
  };
}
