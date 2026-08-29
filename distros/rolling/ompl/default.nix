
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config, python3, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-ompl";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/rolling/ompl/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "046c40e53385c902b0889374daa3b55c83e1ae27e3c12b2cc9036286b3cfcabb";
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
