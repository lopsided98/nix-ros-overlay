
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-noetic-mp2p-icp";
  version = "1.5.5-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mp2p_icp-release/archive/release/noetic/mp2p_icp/1.5.5-1.tar.gz";
    name = "1.5.5-1.tar.gz";
    sha256 = "b128759e8672406dfa52aee9e1b53609df9a35c2113e1b8f2db3cad69b58af7e";
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
