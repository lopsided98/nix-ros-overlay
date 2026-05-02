
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cpplint }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-cpplint";
  version = "0.20.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_cpplint/0.20.5-3.tar.gz";
    name = "0.20.5-3.tar.gz";
    sha256 = "f2df98f16c80b8c9384b903997598eba5f0c679e09a7f73767edb00b0f6f6aa2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-cpplint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cpplint ];

  meta = {
    description = "The CMake API for ament_cpplint to lint C / C++ code using cpplint.";
    license = with lib.licenses; [ asl20 ];
  };
}
