
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pycodestyle }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pycodestyle";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_pycodestyle/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "39f613c066503dead91ab47cdcccbbd167c092c2b7a011d111d17df6b42fe3dd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pycodestyle ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pycodestyle ];

  meta = {
    description = "The CMake API for ament_pycodestyle to check code against the style conventions in
    PEP 8.";
    license = with lib.licenses; [ asl20 ];
  };
}
