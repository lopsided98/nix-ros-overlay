
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, mola-common, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, ros-environment, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-noetic-mp2p-icp";
  version = "1.6.2-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mp2p_icp-release/archive/release/noetic/mp2p_icp/1.6.2-2.tar.gz";
    name = "1.6.2-2.tar.gz";
    sha256 = "866f1505827e455b57735100ac437f94b427f257594d4791dd22cfec350fe69b";
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
