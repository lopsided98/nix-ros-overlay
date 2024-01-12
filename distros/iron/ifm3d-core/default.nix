
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-iron-ifm3d-core";
  version = "0.18.0-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/iron/ifm3d_core/0.18.0-9.tar.gz";
    name = "0.18.0-9.tar.gz";
    sha256 = "cb7fa1bf091bd028a42768e32a0c378e36b2903e4a57bf5c1473941b0d5bb8c0";
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
