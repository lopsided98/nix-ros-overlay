
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mp2p-icp";
  version = "2.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/lyrical/mp2p_icp/2.9.0-3.tar.gz";
    name = "2.9.0-3.tar.gz";
    sha256 = "dd7d40f574e5869b68b39d02f73d6ac2bc8600d4f78edee1279bbad5122f5e4c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-environment ];
  propagatedBuildInputs = [ mola-common mola-imu-preintegration mrpt-libbase mrpt-libgui mrpt-libmaps mrpt-libobs mrpt-libposes mrpt-libtclap onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A repertory of multi primitive-to-primitive (MP2P) ICP algorithms in C++";
    license = with lib.licenses; [ bsd3 ];
  };
}
