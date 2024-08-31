
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-iron-mp2p-icp";
  version = "1.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/iron/mp2p_icp/1.5.5-1.tar.gz";
    name = "1.5.5-1.tar.gz";
    sha256 = "38db0c5fd3083f280727ed5ab3103baaf982d3fccba39a21ae1b10773e36f730";
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
