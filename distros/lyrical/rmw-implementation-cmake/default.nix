
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-rmw-implementation-cmake";
  version = "7.10.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/lyrical/rmw_implementation_cmake/7.10.1-5.tar.gz";
    name = "7.10.1-5.tar.gz";
    sha256 = "60cf004eb05eacf76e687c0642ab7773b75c49dbfcde0670556a4cf79010066e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake functions which can discover and enumerate available implementations.";
    license = with lib.licenses; [ asl20 ];
  };
}
