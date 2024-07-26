
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-uncrustify";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_uncrustify/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "1e18b0cfe6d3ef1d315cacca7f663207c3e3e147119da67074d221121f10f4e4";
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
