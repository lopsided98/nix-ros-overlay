
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-black, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-black";
  version = "0.2.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/lyrical/ament_cmake_black/0.2.6-3.tar.gz";
    name = "0.2.6-3.tar.gz";
    sha256 = "7e8895fa7af68d0dd2302bc07b991c8dbbc320362b6dfeab61d0f7d0be930b62";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ament-black ament-cmake-test ];
  nativeBuildInputs = [ ament-black ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The CMake API for ament_black to lint Python code using black.";
    license = with lib.licenses; [ asl20 ];
  };
}
