
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-export-dependencies, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-copyright, ament-cppcheck, ament-cpplint, ament-flake8, ament-lint-cmake, ament-pep257, ament-uncrustify, ament-xmllint }:
buildRosPackage {
  pname = "ros-rolling-ament-lint-common";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint_common/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "b4f554e0d280bb9ced4f12bf988e891a2d2d50f89e8d98e2031029ea8dd983be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ ament-cmake-copyright ament-cmake-core ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-copyright ament-cppcheck ament-cpplint ament-flake8 ament-lint-cmake ament-pep257 ament-uncrustify ament-xmllint ];
  nativeBuildInputs = [ ament-cmake-copyright ament-cmake-core ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-export-dependencies ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ];

  meta = {
    description = "The list of commonly used linters in the ament build system in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
