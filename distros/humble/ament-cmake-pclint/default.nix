
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pclint }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-pclint";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_pclint/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "f22ad37fa20f465dccaeacedde650ac2575637be302464c1d30b71a62e5c4e41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pclint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pclint ];

  meta = {
    description = "The CMake API for ament_pclint to perform static code analysis on C/C++
    code using PC-lint.";
    license = with lib.licenses; [ asl20 ];
  };
}
