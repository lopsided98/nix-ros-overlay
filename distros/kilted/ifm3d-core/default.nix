
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-kilted-ifm3d-core";
  version = "0.18.0-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/kilted/ifm3d_core/0.18.0-10.tar.gz";
    name = "0.18.0-10.tar.gz";
    sha256 = "2a1329af7bf434f2b936d6e64c5c698c062d4993e9f2200e9dd867eb7276be76";
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
