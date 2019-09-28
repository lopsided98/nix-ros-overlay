
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-uncrustify, ament-cmake-flake8, ament-cmake-cppcheck, ament-cmake-pep257, ament-cmake-xmllint, ament-cmake-lint-cmake, ament-cmake-copyright, ament-cmake-export-dependencies, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-dashing-ament-lint-common";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_lint_common/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "948bff566ad8fd61f7159377e0c98a8494d9f68c9e5ebdc4ee51f651cc579baa";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-uncrustify ament-cmake-core ament-cmake-flake8 ament-cmake-cppcheck ament-cmake-pep257 ament-cmake-xmllint ament-cmake-lint-cmake ament-cmake-copyright ament-cmake-cpplint ];
  nativeBuildInputs = [ ament-cmake-export-dependencies ament-cmake-core ];

  meta = {
    description = ''The list of commonly used linters in the ament buildsytem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
