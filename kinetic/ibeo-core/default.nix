
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, network-interface, catkin, roslint }:
buildRosPackage {
  pname = "ros-kinetic-ibeo-core";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/astuff/ibeo_core-release/archive/release/kinetic/ibeo_core/2.0.2-0.tar.gz;
    sha256 = "c9a9ba008cc63befa85f00182eae4c0d5927f923ebaa7d05137e914919b6736e";
  };

  buildInputs = [ network-interface roslint ];
  propagatedBuildInputs = [ network-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ibeo_core package'';
    #license = lib.licenses.MIT;
  };
}
