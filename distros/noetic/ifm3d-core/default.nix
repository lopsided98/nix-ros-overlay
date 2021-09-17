
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-noetic-ifm3d-core";
  version = "0.18.0-r5";

  src = fetchurl {
    url = "https://github.com/ifm/ifm3d-release/archive/release/noetic/ifm3d_core/0.18.0-5.tar.gz";
    name = "0.18.0-5.tar.gz";
    sha256 = "f47b95f7f05e7bf5ffb163f50200112b0cf3f13a2c270bf3895e034252c1a4cc";
  };

  buildType = "cmake";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ curl cv-bridge glog pcl xmlrpc_c ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Library and Utilities for working with ifm pmd-based 3D ToF Cameras'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
