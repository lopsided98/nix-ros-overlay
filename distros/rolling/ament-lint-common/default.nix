
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-export-dependencies, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-ament-lint-common";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint_common/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "5b90b300d3e0f7c13b54c260923dc75226db4227018e661ce53a72e8d1ccdb1a";
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
