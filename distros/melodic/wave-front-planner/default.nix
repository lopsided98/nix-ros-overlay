
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-melodic-wave-front-planner";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/wave_front_planner/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "e5765a7067bba53a8e454f8cee0abfc3f821c4596bd571cef77f458a5f5d469e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wave_front_planner package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
