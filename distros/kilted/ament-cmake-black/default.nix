
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-black, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-black";
  version = "0.2.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/kilted/ament_cmake_black/0.2.6-2.tar.gz";
    name = "0.2.6-2.tar.gz";
    sha256 = "f215b6b09700757339cc2d4c9f29315b204ad008ee91a5e7d2e5a504a13ddf01";
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
