
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, desktop, perception, simulators, urdf-sim-tutorial }:
buildRosPackage {
  pname = "ros-noetic-desktop-full";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/noetic/desktop_full/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "a464f2b0bc587ebc77fc1ac28c80f0f53945a21810c6f6d9002d1e47e71fc97a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ desktop perception simulators urdf-sim-tutorial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
