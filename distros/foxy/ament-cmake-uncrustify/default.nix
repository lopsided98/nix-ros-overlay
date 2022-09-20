
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-uncrustify";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_cmake_uncrustify/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "f8e063e4d39c515259ecc2eb258f433143ab029c01c69290ee56f75f52ed3dd5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-uncrustify ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-uncrustify ];

  meta = {
    description = ''The CMake API for ament_uncrustify to check code against styleconventions
    using uncrustify.'';
    license = with lib.licenses; [ asl20 ];
  };
}
