
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mola-common, mola-imu-preintegration, mrpt-libbase, mrpt-libmaps, mrpt-libobs, mrpt-libposes, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mp2p-icp-core";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/kilted/mp2p_icp_core/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "fa6d3a27688c7663122489e183d33f953134e27484b0d31f7949d4f1cd3ce914";
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
