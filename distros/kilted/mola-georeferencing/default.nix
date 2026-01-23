
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mola-gtsam-factors, mola-yaml, mp2p-icp, mrpt-libmaps, mrpt-libtclap }:
buildRosPackage {
  pname = "ros-kilted-mola-georeferencing";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/kilted/mola_georeferencing/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "417e10cfc5f277fb80dbae2b4364f248de8038b16585bfb212de87c7ac0954af";
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
