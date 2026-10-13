
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, eigen, mola-common, mola-imu-preintegration, mrpt-containers, mrpt-maps, mrpt-obs, mrpt-poses, mrpt-rtti, mrpt-serialization, mrpt-system, mrpt-tfest, mrpt-topography, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mp2p-icp-core";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/jazzy/mp2p_icp_core/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "afb4d73ca71c2d60268ee46da7ca35dbc867e7e6be20380d7d57a1fff7705d3f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-environment ];
  propagatedBuildInputs = [ cli11 eigen mola-common mola-imu-preintegration mrpt-containers mrpt-maps mrpt-obs mrpt-poses mrpt-rtti mrpt-serialization mrpt-system mrpt-tfest mrpt-topography onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ libraries for multi primitive-to-primitive (MP2P) ICP algorithms and point cloud processing pipelines, plus headless CLI applications. No GUI/display dependencies; see mp2p_icp_viz for the GUI apps.";
    license = with lib.licenses; [ bsd3 ];
  };
}
