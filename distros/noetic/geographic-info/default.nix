
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-noetic-geographic-info";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/noetic/geographic_info/0.5.6-1.tar.gz";
    name = "0.5.6-1.tar.gz";
    sha256 = "be539a05f207583008d37725779e71984db5d3a5991dbbd19f6e158cd3c90272";
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
