
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, mola-common, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, ros-environment, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-noetic-mp2p-icp";
  version = "1.6.3-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mp2p_icp-release/archive/release/noetic/mp2p_icp/1.6.3-1.tar.gz";
    name = "1.6.3-1.tar.gz";
    sha256 = "31cc33ddd8e483230c1445266d5192446ac6e2aceda103a8dea53a27b336d766";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  propagatedBuildInputs = [ mola-common mrpt-libbase mrpt-libgui mrpt-libmaps mrpt-libobs mrpt-libposes mrpt-libtclap tbb_2021_11 ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = "A repertory of multi primitive-to-primitive (MP2P) ICP algorithms in C++";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
