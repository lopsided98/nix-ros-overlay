
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-iron-rmw-implementation-cmake";
  version = "7.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/iron/rmw_implementation_cmake/7.1.0-2.tar.gz";
    name = "7.1.0-2.tar.gz";
    sha256 = "a359e0f473f6abe2984ce6999124778815247f2d1f8b07b0e5ce32600b16960a";
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
