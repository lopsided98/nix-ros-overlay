
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mola-gtsam-factors, mola-yaml, mp2p-icp, mrpt-libmaps, mrpt-libtclap }:
buildRosPackage {
  pname = "ros-jazzy-mola-georeferencing";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/jazzy/mola_georeferencing/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "c2bfdd07929b4c60e081ec26c00a6d3d671a609ba4bded5d8cdffef75b210959";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtsam mola-common mola-gtsam-factors mola-yaml mp2p-icp mrpt-libmaps mrpt-libtclap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library for georeferencing key-frame maps (simplemaps) and related CLI tools";
    license = with lib.licenses; [ gpl3Only ];
  };
}
