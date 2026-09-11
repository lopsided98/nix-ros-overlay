
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mola-common, mola-imu-preintegration, mrpt-libbase, mrpt-libmaps, mrpt-libobs, mrpt-libposes, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mp2p-icp-core";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/lyrical/mp2p_icp_core/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "c6cd8cfdbff2e3ced64d0a154a21a72cb35487f3b996894f830a2fa913ddd04e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-environment ];
  propagatedBuildInputs = [ cli11 mola-common mola-imu-preintegration mrpt-libbase mrpt-libmaps mrpt-libobs mrpt-libposes onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ libraries for multi primitive-to-primitive (MP2P) ICP algorithms and point cloud processing pipelines, plus headless CLI applications. No GUI/display dependencies; see mp2p_icp_viz for the GUI apps.";
    license = with lib.licenses; [ bsd3 ];
  };
}
