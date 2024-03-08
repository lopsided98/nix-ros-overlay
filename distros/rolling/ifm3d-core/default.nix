
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-rolling-ifm3d-core";
  version = "0.18.0-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/rolling/ifm3d_core/0.18.0-9.tar.gz";
    name = "0.18.0-9.tar.gz";
    sha256 = "da384f3a6f7b93d678ba3acb516cbdf6b51b7e0afc2d01a442e5b455a1fa2c19";
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
