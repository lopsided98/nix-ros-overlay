
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mp2p-icp";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/rolling/mp2p_icp/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "eb54dc26162b70aef3730289f7b34335f899ddc1afade7c00a1336009d5c55ef";
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
