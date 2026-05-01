
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, curl, cv-bridge, glog, pcl, xmlrpc_c }:
buildRosPackage {
  pname = "ros-lyrical-ifm3d-core";
  version = "0.18.0-r11";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ifm3d-release/archive/release/lyrical/ifm3d_core/0.18.0-11.tar.gz";
    name = "0.18.0-11.tar.gz";
    sha256 = "99c160a705391a331f9eb2c29d27c0ba33c143be634333c099eb07ec9edebcc7";
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
