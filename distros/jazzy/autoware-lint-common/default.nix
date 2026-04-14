
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-export-dependencies, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-jazzy-autoware-lint-common";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_cmake-release/archive/release/jazzy/autoware_lint_common/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d3a5882adef7c7090017d855f737a913df7b23257f0e964510d7ae1543481926";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ ament-cmake-copyright ament-cmake-core ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-test ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-test ];

  meta = {
    description = "The list of commonly used linters in Autoware";
    license = with lib.licenses; [ asl20 ];
  };
}
