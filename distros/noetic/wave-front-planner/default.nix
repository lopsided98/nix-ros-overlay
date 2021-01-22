
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-noetic-wave-front-planner";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/wave_front_planner/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "85f371230bb411a4703e0fd3bad3f054b802ffc90ddc0d10c4306a346a37617e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wave_front_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
