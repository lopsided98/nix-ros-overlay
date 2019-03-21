
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, perception, catkin, desktop, simulators, urdf-tutorial }:
buildRosPackage {
  pname = "ros-kinetic-desktop-full";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/desktop_full/1.3.2-0.tar.gz;
    sha256 = "f4f31c4f1847b1eb0388714879caa4d9b8090f4ecc288ae23ac1a1047f273ed9";
  };

  propagatedBuildInputs = [ desktop urdf-tutorial perception simulators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    #license = lib.licenses.BSD;
  };
}
