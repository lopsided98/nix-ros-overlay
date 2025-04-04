
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pep257 }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-pep257";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_pep257/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "3ed2fb6b312fbec44ecfee51098d780a869b2381659211a26a73bba216de8bae";
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
