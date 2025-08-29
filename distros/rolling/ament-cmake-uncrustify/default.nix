
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-uncrustify";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_uncrustify/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "b31294684f37a81992e88b4747750806ed868cd10f3c9e0e2fde7859d0307b70";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-uncrustify ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-uncrustify ];

  meta = {
    description = "The CMake API for ament_uncrustify to check code against styleconventions
    using uncrustify.";
    license = with lib.licenses; [ asl20 ];
  };
}
