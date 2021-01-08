
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, unzip }:
buildRosPackage {
  pname = "ros-kinetic-convex-decomposition";
  version = "0.1.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/convex_decomposition-release/archive/release/kinetic/convex_decomposition/0.1.11-0.tar.gz";
    name = "0.1.11-0.tar.gz";
    sha256 = "990f02bf853c764648a95c2005bb32176728baf03ef691676979bdc45881a0fc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Convex Decomposition Tool for Robot Model'';
    license = with lib.licenses; [ mit ];
  };
}
