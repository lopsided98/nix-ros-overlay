
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config, python3, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-ompl";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/rolling/ompl/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "53bbe0e7083e8561580de7d024e50fa31ecd2ba059173549b7d93fafcf36ae27";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen pkg-config python3 ];
  propagatedBuildInputs = [ boost flann yaml-cpp ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = "OMPL is a free sampling-based motion planning library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
