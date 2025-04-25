
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-ompl";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/rolling/ompl/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "0a5e0dee5d96358134940c11c776aefc5a0895a11ad6a1ae0e717a1359508872";
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
