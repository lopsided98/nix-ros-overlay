
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mola-gtsam-factors, mola-yaml, mp2p-icp, mrpt-libmaps, mrpt-libtclap }:
buildRosPackage {
  pname = "ros-lyrical-mola-georeferencing";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_georeferencing/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "5fc094dd353e9c0acb18dd9a2fcb5fd9d38808be1fe7e9782669ac4923c3017c";
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
