
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mp2p-icp";
  version = "2.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/lyrical/mp2p_icp/2.10.2-1.tar.gz";
    name = "2.10.2-1.tar.gz";
    sha256 = "fb5fa73c1fbc4e05b4a2ac18a95179352b28cee26f78d80870a5c012017adf1b";
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
