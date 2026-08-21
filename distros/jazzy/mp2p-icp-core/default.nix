
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mola-common, mola-imu-preintegration, mrpt-libbase, mrpt-libmaps, mrpt-libobs, mrpt-libposes, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mp2p-icp-core";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/jazzy/mp2p_icp_core/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "d53488a618ad8728e56cdbaf0999deb156c56249d49e660d00111f312ca7d426";
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
