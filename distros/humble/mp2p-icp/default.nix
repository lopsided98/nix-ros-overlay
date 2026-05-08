
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mp2p-icp";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/humble/mp2p_icp/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "dde79a9119ea37b0bad34325eb3d3fc048b5b73eee1ea3382e0e424e1d4c97e4";
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
