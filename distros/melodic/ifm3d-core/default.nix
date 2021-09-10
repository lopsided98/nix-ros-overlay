
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-melodic-ifm3d-core";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ifm/ifm3d-release/archive/release/melodic/ifm3d_core/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "c34250d57fa25729bccdf466a3b94c02a22e900d7b17a9b88fc5ec34b60b98b4";
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
