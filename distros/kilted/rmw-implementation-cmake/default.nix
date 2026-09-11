
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-rmw-implementation-cmake";
  version = "7.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/kilted/rmw_implementation_cmake/7.8.3-1.tar.gz";
    name = "7.8.3-1.tar.gz";
    sha256 = "25bc56fa41db8ccb94f14548d04f733d7ae44b3a37cb8dbeeba4bf0bb33a4d00";
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
