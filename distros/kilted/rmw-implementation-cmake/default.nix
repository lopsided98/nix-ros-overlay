
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-rmw-implementation-cmake";
  version = "7.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/kilted/rmw_implementation_cmake/7.8.2-2.tar.gz";
    name = "7.8.2-2.tar.gz";
    sha256 = "e06f4cd85ec48f52f25f0536fa075c16836272b1b4fa163bf0f1e31f6450163c";
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
