
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-galactic-ifm3d-core";
  version = "0.18.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/galactic/ifm3d_core/0.18.0-6.tar.gz";
    name = "0.18.0-6.tar.gz";
    sha256 = "0fe643916a6ee1b259e206420d4967cf821e147d019a4f8f2584eb3a40d2052a";
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
