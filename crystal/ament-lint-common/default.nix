
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-uncrustify, ament-cmake-flake8, ament-cmake-cppcheck, ament-cmake-pep257, ament-cmake-xmllint, ament-cmake-lint-cmake, ament-cmake-copyright, ament-cmake-export-dependencies, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-crystal-ament-lint-common";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_lint_common/0.6.4-0.tar.gz;
    sha256 = "91f4a7f259165adea29e391b8ff97c091d12e0f112dcc6b93cb2f616653f8eb1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-uncrustify ament-cmake-core ament-cmake-flake8 ament-cmake-cppcheck ament-cmake-pep257 ament-cmake-xmllint ament-cmake-lint-cmake ament-cmake-copyright ament-cmake-cpplint ];
  nativeBuildInputs = [ ament-cmake-export-dependencies ament-cmake-core ];

  meta = {
    description = ''The list of commonly used linters in the ament buildsytem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
