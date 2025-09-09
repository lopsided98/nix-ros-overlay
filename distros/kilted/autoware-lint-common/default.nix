
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-export-dependencies, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-kilted-autoware-lint-common";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_cmake-release/archive/release/kilted/autoware_lint_common/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "d620985749e1b74ba91cc3f05e4f284c34a6eec7a5d0919f9b671e427bb8aced";
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
