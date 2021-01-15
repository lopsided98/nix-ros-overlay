
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-melodic-wave-front-planner";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/wave_front_planner/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "3ea2a651d46f94519aa0226b554e7b65f51bed163caa33b9d5fc53bbce720c9e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wave_front_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
