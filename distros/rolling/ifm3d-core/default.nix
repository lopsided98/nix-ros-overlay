
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-rolling-ifm3d-core";
  version = "0.18.0-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/rolling/ifm3d_core/0.18.0-10.tar.gz";
    name = "0.18.0-10.tar.gz";
    sha256 = "248e75b2c29fab14e9707da16b238d47a7b6c940464998ff4f3ead1627ae842a";
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
