
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-rolling-rmf-cmake-uncrustify";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_cmake_uncrustify-release/archive/release/rolling/rmf_cmake_uncrustify/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "13247cbe8d0e8d6b3c9e52f5ddfe3ed5de000010e0d879f16c8bfe3f9e1b11a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-uncrustify ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-uncrustify ];

  meta = {
    description = "ament_cmake_uncrustify with support for parsing a config file.";
    license = with lib.licenses; [ asl20 ];
  };
}
