
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-rolling-ifm3d-core";
  version = "0.18.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/rolling/ifm3d_core/0.18.0-6.tar.gz";
    name = "0.18.0-6.tar.gz";
    sha256 = "d8c37c96f9cf13545977b65839b0bec9db17ca39320b5191c1530b025bec6b1a";
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
