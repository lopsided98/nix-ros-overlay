
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-uncrustify, ament-cmake-flake8, ament-cmake-cppcheck, ament-cmake-pep257, ament-cmake-xmllint, ament-cmake-lint-cmake, ament-cmake-copyright, ament-cmake-export-dependencies, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-dashing-ament-lint-common";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_lint_common/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "28e7cadc7ef915f3306bb02e90460e72f1f7bc0a9f530c2afdef300d2949f328";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-uncrustify ament-cmake-core ament-cmake-flake8 ament-cmake-cppcheck ament-cmake-pep257 ament-cmake-xmllint ament-cmake-lint-cmake ament-cmake-copyright ament-cmake-cpplint ];
  nativeBuildInputs = [ ament-cmake-export-dependencies ament-cmake-core ];

  meta = {
    description = ''The list of commonly used linters in the ament buildsytem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
