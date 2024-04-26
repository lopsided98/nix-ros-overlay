
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cpplint }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-cpplint";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_cpplint/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "4111f79457396c0ce79f3e83ac0dfe07c40dd067cffd4407ec0e25d55f0e4bb4";
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
