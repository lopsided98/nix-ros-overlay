
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-rolling-ifm3d-core";
  version = "0.18.0-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/rolling/ifm3d_core/0.18.0-8.tar.gz";
    name = "0.18.0-8.tar.gz";
    sha256 = "bd7bb5c6ee4c801618285f7e1c44653b25f814f7103570a323f9dbd470594555";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake ];
  propagatedBuildInputs = [ curl cv-bridge glog pcl xmlrpc_c ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Library and Utilities for working with ifm pmd-based 3D ToF Cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
