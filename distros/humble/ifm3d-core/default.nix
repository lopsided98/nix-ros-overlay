
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-humble-ifm3d-core";
  version = "0.18.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/humble/ifm3d_core/0.18.0-7.tar.gz";
    name = "0.18.0-7.tar.gz";
    sha256 = "2e79cc115e1aaa9ef85f827a421a320df50492e43b661b5e24a430448d87735e";
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
