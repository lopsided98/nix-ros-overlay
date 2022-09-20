
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, desktop, perception, simulators, urdf-sim-tutorial }:
buildRosPackage {
  pname = "ros-melodic-desktop-full";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/desktop_full/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "236064fd3c4cccc5327f1ac4c951c70762a1f6c88e9faa521251f78e26ea987b";
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
