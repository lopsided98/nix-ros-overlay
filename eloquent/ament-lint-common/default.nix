
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-xmllint, ament-cmake-lint-cmake, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-export-dependencies, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-eloquent-ament-lint-common";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_lint_common/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "8c59754abca214f80f7a6c2e9c66905482a878431d2aaa6545866e90680c8c00";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-xmllint ament-cmake-lint-cmake ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-uncrustify ament-cmake-core ament-cmake-pep257 ament-cmake-copyright ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ];

  meta = {
    description = ''The list of commonly used linters in the ament buildsytem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
