
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pep257 }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pep257";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_pep257/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "d734b73324126688723c165055b2b3b259a506da488ed7afd1eb389f0b66a0e2";
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
