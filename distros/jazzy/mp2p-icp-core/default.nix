
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, eigen, mola-common, mola-imu-preintegration, mrpt-containers, mrpt-maps, mrpt-obs, mrpt-poses, mrpt-rtti, mrpt-serialization, mrpt-system, mrpt-tfest, mrpt-topography, onetbb, python3, python3Packages, ros-environment, zlib }:
buildRosPackage {
  pname = "ros-jazzy-mp2p-icp-core";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/jazzy/mp2p_icp_core/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "dea340c52426594fd34570d684db1cd15b7ed7dace8b4d2c40f1ee52861ad57c";
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
