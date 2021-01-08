
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-console, ecl-eigen, grid-map-core }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-core";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_core/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "fa31852bacdc0bd6a836516d8c54331b173ab9d29eb821c6a57ca3bc1f63e96c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-console ecl-eigen grid-map-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cost maps, following the style of ethz-asl's grid_map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
