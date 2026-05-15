
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mola-gtsam-factors, mola-yaml, mp2p-icp, mrpt-libmaps, mrpt-libtclap }:
buildRosPackage {
  pname = "ros-lyrical-mola-georeferencing";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_georeferencing/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "1bbd798640133d895ca16ca4c57bce787223df85b41e4d77a51883e23a2b6596";
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
