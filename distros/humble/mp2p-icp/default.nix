
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt-libbase, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libposes, mrpt-libtclap, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mp2p-icp";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/humble/mp2p_icp/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "7eaa4fe5879092bf0aa4f295cca1960fc7a30c6d1e4c3dbc1ad95c951aa520fb";
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
