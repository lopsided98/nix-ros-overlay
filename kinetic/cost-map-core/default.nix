
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, ecl-eigen, catkin, ecl-build, ecl-console }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-core";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_core/0.3.3-0.tar.gz;
    sha256 = "fa31852bacdc0bd6a836516d8c54331b173ab9d29eb821c6a57ca3bc1f63e96c";
  };

  buildInputs = [ grid-map-core ecl-eigen ecl-console ecl-build ];
  propagatedBuildInputs = [ grid-map-core ecl-eigen ecl-console ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cost maps, following the style of ethz-asl's grid_map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
