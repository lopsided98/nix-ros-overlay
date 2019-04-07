
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-console, cost-map-ros, ecl-command-line, cost-map-msgs, catkin, ecl-build, nav-msgs, roscpp, cost-map-core }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-visualisations";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_visualisations/0.3.3-0.tar.gz;
    sha256 = "d96fb9a3e1b81af0d4118a8cc0f45de80cc5112c6747f4f8c8d462b8259e981c";
  };

  buildInputs = [ ecl-console nav-msgs cost-map-ros ecl-command-line cost-map-msgs cost-map-core roscpp ecl-build ];
  propagatedBuildInputs = [ ecl-console nav-msgs cost-map-ros ecl-command-line cost-map-msgs cost-map-core roscpp ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualisation tools for cost maps.'';
    #license = lib.licenses.BSD;
  };
}
