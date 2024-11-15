
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, mola-common, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, ros-environment, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-humble-mp2p-icp";
  version = "1.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/humble/mp2p_icp/1.6.3-1.tar.gz";
    name = "1.6.3-1.tar.gz";
    sha256 = "39f58522735816627491bb3155543dd2b5ce7321e0c7d8e1121fe1bae3275e72";
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
