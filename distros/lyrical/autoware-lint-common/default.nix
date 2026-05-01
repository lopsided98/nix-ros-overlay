
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-export-dependencies, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-lyrical-autoware-lint-common";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_cmake-release/archive/release/lyrical/autoware_lint_common/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "559a0d63484e95c2dea1902eff0871db19942a131fd35b9666a579f63d2a787f";
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
