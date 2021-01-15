
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cost-map-core, cost-map-msgs, cost-map-ros, ecl-build, ecl-command-line, ecl-console, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-visualisations";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_visualisations/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "d96fb9a3e1b81af0d4118a8cc0f45de80cc5112c6747f4f8c8d462b8259e981c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cost-map-core cost-map-msgs cost-map-ros ecl-build ecl-command-line ecl-console nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualisation tools for cost maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
