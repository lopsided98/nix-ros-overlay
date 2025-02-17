
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, mola-common, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, ros-environment, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-rolling-mp2p-icp";
  version = "1.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/rolling/mp2p_icp/1.6.5-1.tar.gz";
    name = "1.6.5-1.tar.gz";
    sha256 = "b2d3da8bdd38bbf09475e330bc812f6ce06bdab87ba1e264733df370591cb891";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake ros-environment ];
  propagatedBuildInputs = [ mola-common mrpt-libbase mrpt-libgui mrpt-libmaps mrpt-libobs mrpt-libposes mrpt-libtclap tbb_2021_11 ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "A repertory of multi primitive-to-primitive (MP2P) ICP algorithms in C++";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
