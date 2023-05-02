
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rmw-implementation-cmake";
  version = "7.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/rolling/rmw_implementation_cmake/7.2.0-1.tar.gz";
    name = "7.2.0-1.tar.gz";
    sha256 = "dfe25dca3ab95e7d1af14743334f6fa6cde940e600fc973ed0d129059010cc61";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake functions which can discover and enumerate available implementations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
