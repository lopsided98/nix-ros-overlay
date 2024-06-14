
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-rmw-implementation-cmake";
  version = "7.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/jazzy/rmw_implementation_cmake/7.3.1-1.tar.gz";
    name = "7.3.1-1.tar.gz";
    sha256 = "93f146dccb7fa4f634eb259da6f9cb35807e7f36b513deba4ab647d391b07f75";
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
