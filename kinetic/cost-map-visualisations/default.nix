
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cost-map-msgs, catkin, ecl-command-line, ecl-console, cost-map-core, cost-map-ros, roscpp, nav-msgs, ecl-build }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-visualisations";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_visualisations/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "d96fb9a3e1b81af0d4118a8cc0f45de80cc5112c6747f4f8c8d462b8259e981c";
  };

  buildType = "catkin";
  buildInputs = [ cost-map-msgs ecl-command-line ecl-console cost-map-core cost-map-ros roscpp nav-msgs ecl-build ];
  propagatedBuildInputs = [ cost-map-msgs ecl-command-line ecl-console cost-map-core cost-map-ros roscpp nav-msgs ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualisation tools for cost maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
