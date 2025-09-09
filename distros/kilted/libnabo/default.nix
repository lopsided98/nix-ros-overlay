
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-kilted-libnabo";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libnabo-release/archive/release/kilted/libnabo/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "0f1e2a7659f9fa592c800b1dd029748d982e32a01af65ab6af70c8e45e72ec20";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "libnabo is a fast K Nearest Neighbour library for low-dimensional spaces.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
