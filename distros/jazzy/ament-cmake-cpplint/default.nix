
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cpplint }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-cpplint";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_cpplint/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "3d421ad7f7c404d5d4f9cbbf01569e118d2a9d31536edae3efdc9ce2c79477f1";
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
