
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-jazzy-libnabo";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libnabo-release/archive/release/jazzy/libnabo/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "93d14929761eadbc333a44948187a4ea94ccc155113d9efe7508f129b41a754b";
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
