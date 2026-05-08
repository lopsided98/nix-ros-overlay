
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pycodestyle }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pycodestyle";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_pycodestyle/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "f7fa51ce27c46e567f4ed709a8c6e5c9cf3b386e6a72eea8a81e59e934c5aed1";
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
