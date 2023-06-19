
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-uncrustify";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_cmake_uncrustify/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "b759b422589474e1fe49d5d66479ee9e8c816b9081535e384890af983efc4e0a";
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
