
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pep257 }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-pep257";
  version = "0.17.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_pep257/0.17.5-1.tar.gz";
    name = "0.17.5-1.tar.gz";
    sha256 = "6b3047bf148c7a52c44dcb83a8b98f8973302c0db30551e4f7cfe21ce2724bab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pep257 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pep257 ];

  meta = {
    description = "The CMake API for ament_pep257 to check code against the docstring style conventions in
    PEP 257.";
    license = with lib.licenses; [ asl20 ];
  };
}
