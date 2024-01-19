
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-noetic-exotica-ik-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_ik_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "c6537d5896dac76ac90cd8db8de863cb719204259d3c363b40ecc54f978569b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Regularised and weighted pseudo-inverse unconstrained end-pose solver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
