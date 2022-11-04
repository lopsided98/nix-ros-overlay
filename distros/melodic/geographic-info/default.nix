
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-melodic-geographic-info";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/melodic/geographic_info/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "fa023c42d3d879c61e6052534eb94de0ab79635946e10f0039f7daeb80f92bf1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geodesy geographic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Geographic information metapackage.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
