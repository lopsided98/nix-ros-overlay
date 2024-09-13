
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-noetic-mp2p-icp";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mp2p_icp-release/archive/release/noetic/mp2p_icp/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "5426ed9e0fcdae82da7b416088571e120ab455365d4e830b271128100f6deb5d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libbase mrpt-libgui mrpt-libmaps mrpt-libobs mrpt-libposes mrpt-libtclap tbb_2021_11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A repertory of multi primitive-to-primitive (MP2P) ICP algorithms in C++";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
