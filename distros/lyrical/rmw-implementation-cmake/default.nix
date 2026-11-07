
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-rmw-implementation-cmake";
  version = "7.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/lyrical/rmw_implementation_cmake/7.10.3-1.tar.gz";
    name = "7.10.3-1.tar.gz";
    sha256 = "eaec94673ab3cd7b7540f3e0fb09bdc3800c29e7b4b6c92697fcc9b588c84957";
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
