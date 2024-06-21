
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-jazzy-ifm3d-core";
  version = "0.18.0-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/jazzy/ifm3d_core/0.18.0-10.tar.gz";
    name = "0.18.0-10.tar.gz";
    sha256 = "d8070e0771e98e4c156f8bc77a8095ea4fcf763568c9d40a7259bce2d2f761d5";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake ];
  propagatedBuildInputs = [ curl cv-bridge glog pcl xmlrpc_c ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Library and Utilities for working with ifm pmd-based 3D ToF Cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
