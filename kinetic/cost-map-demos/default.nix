
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, ecl-console, cost-map-ros, catkin, roscpp, ecl-build, nav-msgs, rviz, tf, cost-map-visualisations }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-demos";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_demos/0.3.3-0.tar.gz;
    sha256 = "df4430d5c45e19156de9ed0ff3f12c3cb823db273df85f95e4900e799ca715aa";
  };

  buildInputs = [ ecl-console roscpp nav-msgs cost-map-ros costmap-2d tf cost-map-visualisations ecl-build ];
  propagatedBuildInputs = [ costmap-2d cost-map-ros tf roscpp ecl-build nav-msgs rviz ecl-console cost-map-visualisations ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstrations for cost maps.'';
    #license = lib.licenses.BSD;
  };
}
