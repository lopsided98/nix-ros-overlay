
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-foxy-ifm3d-core";
  version = "0.18.0-r4";

  src = fetchurl {
    url = "https://github.com/ifm/ifm3d-release/archive/release/foxy/ifm3d_core/0.18.0-4.tar.gz";
    name = "0.18.0-4.tar.gz";
    sha256 = "d66698ff96c051522c171ca7c460e36738d95349a70a8f55929d4d4813b76b84";
  };

  buildType = "cmake";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ curl cv-bridge glog pcl xmlrpc_c ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Library and Utilities for working with ifm pmd-based 3D ToF Cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
