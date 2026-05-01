
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-ompl";
  version = "1.7.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/lyrical/ompl/1.7.0-4.tar.gz";
    name = "1.7.0-4.tar.gz";
    sha256 = "912fbc1bd7fd9c5ad77fa79f4b22edc570dda58165352acd8dc1d9bba3bac022";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen flann ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "OMPL is a free sampling-based motion planning library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
