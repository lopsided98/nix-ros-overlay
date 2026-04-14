
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pclint }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-pclint";
  version = "0.17.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_pclint/0.17.5-1.tar.gz";
    name = "0.17.5-1.tar.gz";
    sha256 = "da7f19fe1072c3c967616ba52172abfaaec60e88be1cbb8730186fdc1f1c2391";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pclint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pclint ];

  meta = {
    description = "The CMake API for ament_pclint to perform static code analysis on C/C++
    code using PC-lint.";
    license = with lib.licenses; [ asl20 ];
  };
}
