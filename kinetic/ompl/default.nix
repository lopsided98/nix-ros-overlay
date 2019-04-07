
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, boost, eigen }:
buildRosPackage {
  pname = "ros-kinetic-ompl";
  version = "1.2.3-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ompl-release/archive/release/kinetic/ompl/1.2.3-1.tar.gz;
    sha256 = "3930855a0141df54e5c4758446f3aee262fdda700cbf3377b6044cf1ff7fa538";
  };

  buildInputs = [ cmake boost eigen ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    #license = lib.licenses.BSD;
  };
}
