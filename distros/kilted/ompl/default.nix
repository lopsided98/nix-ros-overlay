
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-ompl";
  version = "1.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/kilted/ompl/1.7.0-3.tar.gz";
    name = "1.7.0-3.tar.gz";
    sha256 = "27b2f208bf8711cdccb8a15ec781a64f15472005608b00e2e21e5c1d4b43a6aa";
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
