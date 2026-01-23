
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-export-dependencies, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-jazzy-ament-lint-common";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_lint_common/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "8394dd3464335728b303c4bb0970802b3649a25a9faa7c9369177071c09e01c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ ament-cmake-copyright ament-cmake-core ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ];

  meta = {
    description = "The list of commonly used linters in the ament build system in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
