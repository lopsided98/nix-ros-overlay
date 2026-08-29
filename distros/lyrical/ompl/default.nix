
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config, python3, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-ompl";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/lyrical/ompl/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "e12c560b3f79c54dfbaa4d14e044e6cc05728741eb5c1f29a6a161b13c79395a";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config python3 ];
  propagatedBuildInputs = [ boost eigen flann yaml-cpp ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = "OMPL is a free sampling-based motion planning library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
