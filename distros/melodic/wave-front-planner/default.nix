
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-mesh-core, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-melodic-wave-front-planner";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/wave_front_planner/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d01a973a31501dd12f510a3dfae57e18afd367d0c960b0e48da91a03e0f76dee";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-mesh-core mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wave_front_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
