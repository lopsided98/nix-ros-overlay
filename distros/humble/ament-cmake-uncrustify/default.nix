
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-uncrustify";
  version = "0.12.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_uncrustify/0.12.12-1.tar.gz";
    name = "0.12.12-1.tar.gz";
    sha256 = "e785caba52397623a04aa3b9dc9f1db3a48785d6ff2ff3f1ef7602517c2dcb58";
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
