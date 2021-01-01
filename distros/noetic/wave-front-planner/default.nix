
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-noetic-wave-front-planner";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/wave_front_planner/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "fe342dd3a47b37106b2615d68fba8d064bb5cbb7ea925fcbb848cc7977216530";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wave_front_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
