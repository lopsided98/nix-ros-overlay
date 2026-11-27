
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, eigen, mola-common, mola-imu-preintegration, mrpt-containers, mrpt-maps, mrpt-obs, mrpt-poses, mrpt-rtti, mrpt-serialization, mrpt-system, mrpt-tfest, mrpt-topography, onetbb, python3, python3Packages, ros-environment, zlib }:
buildRosPackage {
  pname = "ros-humble-mp2p-icp-core";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/humble/mp2p_icp_core/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "d32febc05039b3ec7dd81d79dbcbbd9a9bdda2b2ec6348e49d00fa5c89b383a3";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ros-environment ];
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ cli11 eigen mola-common mola-imu-preintegration mrpt-containers mrpt-maps mrpt-obs mrpt-poses mrpt-rtti mrpt-serialization mrpt-system mrpt-tfest mrpt-topography onetbb python3Packages.numpy zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ libraries for multi primitive-to-primitive (MP2P) ICP algorithms and point cloud processing pipelines, plus headless CLI applications. No GUI/display dependencies; see mp2p_icp_viz for the GUI apps.";
    license = with lib.licenses; [ bsd3 ];
  };
}
